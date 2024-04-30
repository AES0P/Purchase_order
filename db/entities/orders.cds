namespace com.win.po;

using {
    cuid,
    Currency,
    managed
} from '@sap/cds/common';

using from '../index';

entity Orders : cuid, managed {
    orderNo       : po.orderNo;
    vendor        : po.vendor;
    purchOrg      : po.purchOrg;
    purchGroup    : po.purchGroup;
    companyCode   : po.companyCode;
    currency      : Currency;
    text          : po.description;
    note          : po.description;
    totalStock    : po.stock;
    totalNetPrice : po.price;
    items         : Composition of many po.OrderItems
                        on items.parent = $self;
}

// input validation
annotate Orders with {
    vendor        @mandatory  @assert.target;
    purchOrg      @mandatory;
    purchGroup    @mandatory;
    companyCode   @mandatory;
    currency      @mandatory;
    totalNetPrice @Measures.ISOCurrency: currency_code;
}
