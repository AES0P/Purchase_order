using from '../../srv/admin-service';
using from '../ui/layout-list_reports';


annotate AdminService.Orders with @(
    UI.HeaderInfo                  : {
        TypeName    : '{i18n>HeaderTitle}',
        Title       : {Value: orderNo},
        Description : {Value: text},
        TypeImageUrl: 'sap-icon://accelerated'
    },
    UI.HeaderFacets                : [{
        $Type : 'UI.ReferenceFacet',
        Label : '{i18n>POOverview}',
        ID    : 'Header',
        Target: '@UI.FieldGroup#Basic_info'
    }],
    UI.FieldGroup #Basic_info      : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: totalStock
            },
            {
                $Type: 'UI.DataField',
                Value: totalNetPrice
            },
            {
                $Type      : 'UI.DataField',
                Value      : status_code,
                Criticality: statusIcon
            }
        ]
    },
    UI.Facets                      : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>General}',
            ID    : 'General',
            Target: '@UI.FieldGroup#General'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>OrganizationInfo}',
            ID    : 'OrganizationInfo',
            Target: '@UI.FieldGroup#OrganizationInfo'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Texts}',
            ID    : 'Texts',
            Target: '@UI.FieldGroup#Texts'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Items}',
            Target: 'items/@UI.LineItem'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Attachments}',
            Target: 'attachments/@UI.LineItem'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Administrative}',
            ID    : 'Administrative',
            Target: '@UI.FieldGroup#Administrative'
        }
    ],
    UI.FieldGroup #General         : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: orderNo
            },
            {
                $Type: 'UI.DataField',
                Value: vendor_vendor
            },
            {
                $Type: 'UI.DataField',
                Value: currency_code
            }
        ]
    },
    UI.FieldGroup #OrganizationInfo: {
        $Type: 'UI.FieldGroupType',
        Data : [

            {
                $Type: 'UI.DataField',
                Value: companyCode_companyCode
            },
            {
                $Type: 'UI.DataField',
                Value: purchOrg_purchOrg
            },
            {
                $Type: 'UI.DataField',
                Value: purchGroup_purchGroup
            }
        ]
    },
    UI.FieldGroup #Texts           : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: text
            },
            {
                $Type: 'UI.DataField',
                Value: note
            }
        ]
    },
    UI.FieldGroup #Administrative  : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: createdAt,
                Label: '{i18n>Createdat}'
            },
            {
                $Type: 'UI.DataField',
                Value: createdBy,
                Label: '{i18n>Createdby}'
            },
            {
                $Type: 'UI.DataField',
                Value: modifiedAt,
                Label: '{i18n>Modifiedat}'
            },
            {
                $Type: 'UI.DataField',
                Value: modifiedBy,
                Label: '{i18n>Modifiedby}'
            }
        ]
    }
);

annotate AdminService.OrderItems with @(
    UI.HeaderInfo            : {
        TypeName    : '{i18n>ItemTitle}',
        Title       : {Value: parent.orderNo},
        TypeImageUrl: 'sap-icon://accelerated'
    },
    UI.HeaderFacets          : [{
        $Type : 'UI.ReferenceFacet',
        Target: '@UI.FieldGroup#Basic_info'
    }, ],
    UI.FieldGroup #Basic_info: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type               : 'UI.DataField',
                Value               : orderItemNo,
                @Common.FieldControl: #ReadOnly
            },
            {
                $Type               : 'UI.DataField',
                Value               : materialNo,
                @Common.FieldControl: #ReadOnly
            },
            {
                $Type               : 'UI.DataField',
                Value               : materialDescr,
                @Common.FieldControl: #ReadOnly
            },
            {
                $Type               : 'UI.DataField',
                Value               : stock,
                @Common.FieldControl: #ReadOnly,
                Criticality         : stockIcon
            },
            {
                $Type               : 'UI.DataField',
                Value               : netPrice,
                @Common.FieldControl: #ReadOnly
            }
        ]
    },
    UI.Facets                : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Account}',
            Target: 'accounts/@UI.LineItem'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Attachments}',
            Target: 'attachments/@UI.LineItem'
        },
    ]
);
