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
