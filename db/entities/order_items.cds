namespace com.win.po;

using {
    cuid,
    managed
} from '@sap/cds/common';

using from '../index';

entity OrderItems : cuid, managed {
    parent                    : Association to po.Orders;
    orderItemNo               : Integer;
    accountAssignmentCategory : po.accountAssignmentCategory;
    itemCategory              : po.itemCategory;
    materialNo                : po.materialNo;
    materialDescr             : po.materialDescr;
    // unit                      : String;
    deliveryDateCategory      : po.deliveryDateCategory;
    stock                     : po.stock;
    deliveryDate              : Date;
    netPrice                  : po.price;
    // priceUnit                 : String;
    materialGroup             : po.materialGroup;
    plant                     : Association to po.Plants;
    storageLocation           : Association to po.StorageLocations;
    deletionIndicator         : po.Tech_Boolean default false;
    text                      : po.description;
    accounts                  : Composition of many po.Accounts
                                    on accounts.parent = $self;
}

annotate OrderItems with {
    parent        @mandatory;
    materialDescr @mandatory;
    stock         @mandatory;
    netPrice      @mandatory  @Measures.ISOCurrency: parent.currency_code;
    plant         @mandatory;
}
