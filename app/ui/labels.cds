using from '../../srv/admin-service';

annotate AdminService.Orders with @title: '{i18n>Orders}' {
    ID            @Common.Label         : '{i18n>ID}';
    orderNo       @Common.Label         : '{i18n>OrderNo}';
    vendor        @Common.Label         : '{i18n>Vendor}'       @Common.Text: vendor.name1;
    purchOrg      @Common.Label         : '{i18n>PurchOrg}'     @Common.Text: purchOrg.descr;
    purchGroup    @Common.Label         : '{i18n>PurchGroup}'   @Common.Text: purchGroup.descr;
    companyCode   @Common.Label         : '{i18n>CompanyCode}'  @Common.Text: companyCode.name;
    text          @Common.Label         : '{i18n>Text}';
    note          @Common.Label         : '{i18n>Note}';
    totalStock    @Common.Label         : '{i18n>TotalStock}';
    totalNetPrice @Common.Label         : '{i18n>TotalNetPrice}';
    status        @Common.Label         : '{i18n>Status}'       @Common.Text: status.name  @Common.TextArrangement: #TextOnly;
};

annotate AdminService.OrderItems with @title: '{i18n>OrderItems}' {
    orderItemNo               @Common.Label : '{i18n>OrderItemNo}';
    accountAssignmentCategory @Common.Label : '{i18n>AccountAssignmentCategory}';
    itemCategory              @Common.Label : '{i18n>ItemCategory}';
    materialNo                @Common.Label : '{i18n>MaterialNo}';
    materialDescr             @Common.Label : '{i18n>MaterialDescr}';
    // unit    @Common.Label              : '{i18n>Unit}';
    deliveryDateCategory      @Common.Label : '{i18n>DeliveryDateCategory}';
    stock                     @Common.Label : '{i18n>Stock}';
    deliveryDate              @Common.Label : '{i18n>DeliveryDate}';
    netPrice                  @Common.Label : '{i18n>NetPrice}';
    // priceUnit                @Common.Label  : '{i18n>PriceUnit}';
    materialGroup             @Common.Label : '{i18n>MaterialGroup}';
    plant                     @Common.Label : '{i18n>Plant}'            @Common.Text: plant.name1;
    storageLocation           @Common.Label : '{i18n>StorageLocation}'  @Common.Text: storageLocation.descr;
    deletionIndicator         @Common.Label : '{i18n>DeletionIndicator}';
    text                      @Common.Label : '{i18n>Text}';
};

annotate AdminService.Accounts with @title : '{i18n>AccountItems}' {
    accountAssgmtNo           @Common.Label: '{i18n>AccountAssgmtNo}';
    accountAssignmentCategory @Common.Label: '{i18n>AccountAssignmentCategory}';
    unloadingPoint            @Common.Label: '{i18n>UnloadingPoint}';
    goodsRecipient            @Common.Label: '{i18n>GoodsRecipient}';
    GLAccountNo               @Common.Label: '{i18n>GLAccountNo}';
    costCenter                @Common.Label: '{i18n>CostCenter}';
    functionalArea            @Common.Label: '{i18n>FunctionalArea}';
};

annotate AdminService.status with {
    code  @Common.Text: name  @Common.TextArrangement: #TextOnly;
}

annotate AdminService.Vendors with {
    vendor   @Common.Label: '{i18n>Vendor}';
    country  @Common.Label: '{i18n>Country}';
    currency @Common.Label: '{i18n>Currency}';
    name1    @Common.Label: '{i18n>Name1}';
    name2    @Common.Label: '{i18n>Name2}';
    name3    @Common.Label: '{i18n>Name3}';
    name4    @Common.Label: '{i18n>Name4}';
    city     @Common.Label: '{i18n>City}';
    street   @Common.Label: '{i18n>Street}';
    address  @Common.Label: '{i18n>Address}';
}

annotate AdminService.Companies with {
    companyCode @Common.Label: '{i18n>CompanyCode}';
    name        @Common.Label: '{i18n>Name}';
    city        @Common.Label: '{i18n>City}';
    country     @Common.Label: '{i18n>Country}';
    currency    @Common.Label: '{i18n>Currency}';
    language    @Common.Label: '{i18n>Language}';
    charOfAccts @Common.Label: '{i18n>CharOfAccts}';
}

annotate AdminService.PurchOrganizations with {
    purchOrg    @Common.Label: '{i18n>PurchOrg}';
    companyCode @Common.Label: '{i18n>CompanyCode}';
    descr       @Common.Label: '{i18n>Descr}';
    schemaGroup @Common.Label: '{i18n>SchemaGroup}';
}

annotate AdminService.PurchasingGroups with {
    purchGroup   @Common.Label: '{i18n>PurchGroup}';
    descr        @Common.Label: '{i18n>Descr}';
    tel          @Common.Label: '{i18n>Tel}';
    outputDevice @Common.Label: '{i18n>OutputDevice}';
    faxNo        @Common.Label: '{i18n>FaxNo}';
    eMail        @Common.Label: '{i18n>EMail}';
}


annotate AdminService.Plants with {
    plant             @Common.Label: '{i18n>Plant}';
    name1             @Common.Label: '{i18n>Name1}';
    valuationArea     @Common.Label: '{i18n>ValuationArea}';
    supplierNumber    @Common.Label: '{i18n>SupplierNumber}';
    factoryCalendar   @Common.Label: '{i18n>FactoryCalendar}';
    name2             @Common.Label: '{i18n>Name2}';
    purchOrganization @Common.Label: '{i18n>PurchOrganization}';
    salesOrganization @Common.Label: '{i18n>SalesOrganization}';
    countryKey        @Common.Label: '{i18n>CountryKey}';
    region            @Common.Label: '{i18n>Region}';
    address           @Common.Label: '{i18n>Address}';
    planningPlant     @Common.Label: '{i18n>[lanningPlant}';
    taxJurisdiction   @Common.Label: '{i18n>TaxJurisdiction}';
    distribChannel    @Common.Label: '{i18n>DistribChannel}';
    intCoBillingDiv   @Common.Label: '{i18n>IntCoBillingDiv}';
}

annotate AdminService.StorageLocations with {
    plant           @Common.Label: '{i18n>Plant}';
    storageLocation @Common.Label: '{i18n>StorageLocation}';
    descr           @Common.Label: '{i18n>Descr}';
}
