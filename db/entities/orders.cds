namespace com.win.po;

using {
    cuid,
    Currency,
    managed
} from '@sap/cds/common';

using from '../index';

entity Orders : cuid, managed {
    orderNo       : po.orderNo;
    vendor        : Association to po.Vendors;
    purchOrg      : Association to po.PurchOrganizations;
    purchGroup    : Association to po.PurchasingGroups;
    companyCode   : Association to po.Companies;
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
    items         @mandatory;
    totalNetPrice @Measures.ISOCurrency: currency_code;
}
