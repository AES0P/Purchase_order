package com.win.po.handlers;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.stereotype.Component;

import com.sap.cds.services.draft.DraftNewEventContext;
import com.sap.cds.services.draft.DraftPatchEventContext;
import com.sap.cds.services.draft.DraftService;
import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.Before;
import com.sap.cds.services.handler.annotations.ServiceName;

import cds.gen.adminservice.AdminService_;
import cds.gen.adminservice.OrderItems;
import cds.gen.adminservice.Orders;

@Component
@ServiceName(AdminService_.CDS_NAME)
public class AdminServiceDraft implements EventHandler {

    @Before(event = DraftService.EVENT_DRAFT_NEW)
    public void prefillOrderInfo(DraftNewEventContext context, Orders order) {
        order.setStatusCode("N");
        order.setText("Write something here");
    }

    @Before(event = DraftService.EVENT_DRAFT_PATCH)
    public void setNetPrice(DraftPatchEventContext context, List<OrderItems> items) {
        items.forEach(item -> {
            try {
                if (item.getStock().equals(BigDecimal.valueOf(0)))
                    item.setNetPrice(BigDecimal.valueOf(0));
            } catch (NullPointerException e) {
            }
        });
    }
}
