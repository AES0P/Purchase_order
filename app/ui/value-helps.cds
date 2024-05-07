using from '../../srv/admin-service';

annotate AdminService.Orders with {
    status      @Common.ValueListWithFixedValues;
    orderNo     @(
        Common.ValueList               : {
            $Type                       : 'Common.ValueListType',
            CollectionPath              : 'Orders',
            Label                       : '{i18n>OrderNo}',
            PresentationVariantQualifier: 'vh_Orders_orderNo',
            Parameters                  : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    ValueListProperty: 'orderNo',
                    LocalDataProperty: 'orderNo', // local data property is the foreign key
                },
                {
                    $Type            : 'Common.ValueListParameterOut',
                    ValueListProperty: 'vendor_vendor',
                    LocalDataProperty: 'vendor_vendor'
                },
                {
                    $Type            : 'Common.ValueListParameterOut',
                    ValueListProperty: 'purchOrg_purchOrg',
                    LocalDataProperty: 'purchOrg_purchOrg',
                },
                {
                    $Type            : 'Common.ValueListParameterOut',
                    ValueListProperty: 'purchGroup_purchGroup',
                    LocalDataProperty: 'purchGroup_purchGroup',
                },
                {
                    $Type            : 'Common.ValueListParameterOut',
                    ValueListProperty: 'companyCode_companyCode',
                    LocalDataProperty: 'companyCode_companyCode',
                }
            ]
        },
        Common.ValueListWithFixedValues: false
    );
    vendor      @(
        Common.ValueList               : {
            $Type                       : 'Common.ValueListType',
            CollectionPath              : 'Vendors',
            Label                       : '{i18n>Vendors}',
            PresentationVariantQualifier: 'vh_Orders_vendors',
            Parameters                  : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    ValueListProperty: 'vendor',
                    LocalDataProperty: 'vendor_vendor'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'country'
                },
                {
                    $Type            : 'Common.ValueListParameterOut',
                    ValueListProperty: 'currency_code',
                    LocalDataProperty: 'currency_code'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'name1'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'name2'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'name3'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'name4'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'city'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'street'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'address'
                }
            ]
        },
        Common.ValueListWithFixedValues: false
    );
    companyCode @(
        Common.ValueList               : {
            $Type                       : 'Common.ValueListType',
            CollectionPath              : 'Companies',
            Label                       : '{i18n>Companies}',
            PresentationVariantQualifier: 'vh_Orders_companyCode',
            Parameters                  : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    ValueListProperty: 'companyCode',
                    LocalDataProperty: 'companyCode_companyCode'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'name'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'city'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'country'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'currency'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'language'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'charOfAccts'
                }
            ]
        },
        Common.ValueListWithFixedValues: false
    );
    purchOrg    @(
        Common.ValueList               : {
            $Type                       : 'Common.ValueListType',
            CollectionPath              : 'PurchOrganizations',
            Label                       : '{i18n>PurchOrganizations}',
            PresentationVariantQualifier: 'vh_Orders_purchOrg',
            Parameters                  : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    ValueListProperty: 'purchOrg',
                    LocalDataProperty: 'purchOrg_purchOrg'
                },
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    ValueListProperty: 'companyCode',
                    LocalDataProperty: 'companyCode_companyCode'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'descr'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'schemaGroup'
                }
            ]
        },
        Common.ValueListWithFixedValues: false
    );
    purchGroup  @(
        Common.ValueList               : {
            $Type                       : 'Common.ValueListType',
            CollectionPath              : 'PurchasingGroups',
            Label                       : '{i18n>PurchasingGroups}',
            PresentationVariantQualifier: 'vh_Orders_purchGroup',
            Parameters                  : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    ValueListProperty: 'purchGroup',
                    LocalDataProperty: 'purchGroup_purchGroup'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'descr'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'tel'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'outputDevice'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'faxNo'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'eMail'
                }
            ]
        },
        Common.ValueListWithFixedValues: false
    );
};

annotate AdminService.Orders with @(
    UI.PresentationVariant #vh_Orders_orderNo    : {
        $Type    : 'UI.PresentationVariantType',
        SortOrder: [{
            $Type     : 'Common.SortOrderType',
            Property  : orderNo,
            Descending: false,
        }, ],
    },
    UI.PresentationVariant #vh_Orders_vendors    : {
        $Type    : 'UI.PresentationVariantType',
        SortOrder: [{
            $Type     : 'Common.SortOrderType',
            Property  : vendor_vendor,
            Descending: false,
        }, ],
    },
    UI.PresentationVariant #vh_Orders_companyCode: {
        $Type    : 'UI.PresentationVariantType',
        SortOrder: [{
            $Type     : 'Common.SortOrderType',
            Property  : companyCode_companyCode,
            Descending: false,
        }, ],
    },
    UI.PresentationVariant #vh_Orders_purchOrg   : {
        $Type    : 'UI.PresentationVariantType',
        SortOrder: [{
            $Type     : 'Common.SortOrderType',
            Property  : purchOrg_purchOrg,
            Descending: false,
        }, ],
    },
    UI.PresentationVariant #vh_Orders_purchGroup : {
        $Type    : 'UI.PresentationVariantType',
        SortOrder: [{
            $Type     : 'Common.SortOrderType',
            Property  : purchGroup_purchGroup,
            Descending: false,
        }, ],
    }
);

annotate AdminService.OrderItems with {
    plant           @(
        Common.ValueList               : {
            $Type                       : 'Common.ValueListType',
            CollectionPath              : 'Plants',
            Label                       : '{i18n>Plants}',
            PresentationVariantQualifier: 'vh_Orders_plant',
            Parameters                  : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    ValueListProperty: 'plant',
                    LocalDataProperty: 'plant_plant', // local data property is the foreign key
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'name1'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'valuationArea'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'supplierNumber'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'factoryCalendar'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'name2'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'purchOrganization'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'salesOrganization'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'countryKey'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'region'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'address'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'planningPlant'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'taxJurisdiction'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'distribChannel'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'intCoBillingDiv'
                }
            ]
        },
        Common.ValueListWithFixedValues: false
    );

    storageLocation @(
        Common.ValueList               : {
            $Type                       : 'Common.ValueListType',
            CollectionPath              : 'StorageLocations',
            Label                       : '{i18n>StorageLocations}',
            PresentationVariantQualifier: 'vh_Orders_storageLocation',
            Parameters                  : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    ValueListProperty: 'plant',
                    LocalDataProperty: 'plant_plant'
                },
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    ValueListProperty: 'storageLocation',
                    LocalDataProperty: 'storageLocation_storageLocation'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'descr'
                }
            ]
        },
        Common.ValueListWithFixedValues: false
    );
};


annotate AdminService.OrderItems with @(
    UI.PresentationVariant #vh_Orders_plant          : {
        $Type    : 'UI.PresentationVariantType',
        SortOrder: [{
            $Type     : 'Common.SortOrderType',
            Property  : plant_plant,
            Descending: false,
        }, ],
    },
    UI.PresentationVariant #vh_Orders_storageLocation: {
        $Type    : 'UI.PresentationVariantType',
        SortOrder: [{
            $Type     : 'Common.SortOrderType',
            Property  : storageLocation_storageLocation,
            Descending: false,
        }, ],
    }
);
