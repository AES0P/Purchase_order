namespace com.win.po;

using from '../index';
using {Currency} from '@sap/cds/common';

// ensure all masterdata entities are available to clients
@cds.autoexpose  @readonly
aspect MasterData {}

entity Vendors : MasterData {
    key vendor   : po.vendor;
        country  : po.country;
        currency : Currency;
        name1    : po.name1;
        name2    : po.name2;
        name3    : po.name3;
        name4    : po.name4;
        city     : po.city;
        street   : po.street;
        address  : po.address;
}

entity Companies : MasterData {
    key companyCode : String;
        name        : String;
        city        : String;
        country     : String;
        currency    : String;
        language    : String;
        charOfAccts : String;
}

entity PurchOrganizations : MasterData {
    key purchOrg    : String;
        descr       : String;
        companyCode : String;
        schemaGroup : String;
}

entity PurchasingGroups : MasterData {
    key purchGroup   : String;
        descr        : String;
        tel          : String;
        outputDevice : String;
        faxNo        : String;
        eMail        : String;
}

entity Plants : MasterData {
    key plant                : String;
        name1                : String;
        valuationArea        : String;
        supplierNumber       : String;
        factoryCalendar      : String;
        name2                : String;
        streetAndHouseNumber : String;
        purchOrganization    : String;
        salesOrganization    : String;
        countryKey           : String;
        region               : String;
        address              : String;
        planningPlant        : String;
        taxJurisdiction      : String;
        distribChannel       : String;
        intCoBillingDiv      : String;
}


entity StorageLocations : MasterData {
    key plant           : String;
    key storageLocation : String;
        descr           : String;
}
