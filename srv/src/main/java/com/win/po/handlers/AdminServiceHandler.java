package com.win.po.handlers;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.stereotype.Component;

import com.sap.cds.services.cds.CdsReadEventContext;
import com.sap.cds.services.cds.CqnService;
import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.After;
import com.sap.cds.services.handler.annotations.ServiceName;

import cds.gen.adminservice.AdminService_;
import cds.gen.adminservice.Orders;
import cds.gen.adminservice.Orders_;

@Component
@ServiceName(AdminService_.CDS_NAME)
public class AdminServiceHandler implements EventHandler {

    @After(event = CqnService.EVENT_READ, entity = Orders_.CDS_NAME)
    public void afterReadOrder(CdsReadEventContext context, List<Orders> orders) {
        calculateTotalValues(orders);
    }

    private void calculateTotalValues(List<Orders> orders) {
        orders.forEach(order -> {
            order.setTotalNetPrice(BigDecimal.valueOf(0));
            order.setTotalStock(BigDecimal.valueOf(0));
            order.setStatusIcon(2);
        });
    }

}
