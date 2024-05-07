package com.win.po.handlers;

import java.math.BigDecimal;
import java.util.List;
import java.util.function.Supplier;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sap.cds.ql.Select;
import com.sap.cds.services.ErrorStatuses;
import com.sap.cds.services.ServiceException;
import com.sap.cds.services.cds.CdsReadEventContext;
import com.sap.cds.services.cds.CqnService;
import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.After;
import com.sap.cds.services.handler.annotations.Before;
import com.sap.cds.services.handler.annotations.On;
import com.sap.cds.services.handler.annotations.ServiceName;
import com.sap.cds.services.persistence.PersistenceService;

import cds.gen.adminservice.AdminService_;
import cds.gen.adminservice.OrderItems;
import cds.gen.adminservice.OrderItems_;
import cds.gen.adminservice.Orders;
import cds.gen.adminservice.Orders_;
import cds.gen.adminservice.Vendors;
import cds.gen.adminservice.Vendors_;

@Component
@ServiceName(AdminService_.CDS_NAME)
public class AdminServiceHandler implements EventHandler {

    @Autowired
    private PersistenceService db;

    @On(event = CqnService.EVENT_CREATE, entity = Orders_.CDS_NAME)
    public void onCreateOrder(Orders order) {
        order.setIsEditable(false);
    }

    @Before(event = { CqnService.EVENT_CREATE, CqnService.EVENT_UPDATE }, entity = Orders_.CDS_NAME)
    public void beforeCreateOrUpdateOrder(Orders order) {
        order.setStatusCode("S");
        order.setCurrencyCode(db.run(Select.from(Vendors_.class).where(o -> o.vendor().eq(order.getVendorVendor())))
                .first(Vendors.class).orElseThrow(notFound("MessageKeys.Order_MISSING")).getCurrencyCode());
    }

    @After(event = CqnService.EVENT_READ, entity = Orders_.CDS_NAME)
    public void afterReadOrder(CdsReadEventContext context, List<Orders> orders) {
        calculateTotalValues(orders);
    }

    private void calculateTotalValues(List<Orders> orders) {
        orders.forEach(order -> {
            order.setTotalNetPrice(BigDecimal.valueOf(0));
            order.setTotalStock(BigDecimal.valueOf(0));
            List<OrderItems> items = db
                    .run(Select.from(OrderItems_.class).where(o -> o.parent_ID().eq(order.getId())))
                    .listOf(OrderItems.class);
            if (items != null) {
                items.forEach(item -> {
                    order.setTotalNetPrice(item.getNetPrice() != null ? item.getNetPrice().add(order.getTotalNetPrice())
                            : order.getTotalNetPrice());
                    order.setTotalStock(item.getStock() != null ? item.getStock().add(order.getTotalStock())
                            : order.getTotalStock());
                });
            }
        });
    }

    @After(event = CqnService.EVENT_READ, entity = Orders_.CDS_NAME)
    public void setOrderStatusIconAndColor(CdsReadEventContext context, List<Orders> orders) {
        orders.forEach(order -> {
            try {
                order.setStatusIcon(
                        order.getStatus().containsValue("Y") ? 3 : order.getStatus().containsValue("S") ? 2 : 1);
            } catch (NullPointerException e) {
            }
        });
    }

    @After(event = CqnService.EVENT_READ, entity = OrderItems_.CDS_NAME)
    public void setItemStatusIconAndColor(CdsReadEventContext context, List<OrderItems> items) {
        items.forEach(item -> {
            try {
                item.setStockIcon(item.getStock() == BigDecimal.valueOf(0) ? 2 : 3);
            } catch (NullPointerException e) {
            }
        });
    }

    private Supplier<ServiceException> notFound(String message) {
        return () -> new ServiceException(ErrorStatuses.NOT_FOUND, message);
    }

}
