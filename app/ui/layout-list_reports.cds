using from '../../srv/admin-service';

annotate AdminService.Orders with @(
    UI.HeaderInfo         : {
        TypeName      : '{i18n>HeaderTitle}',
        TypeNamePlural: '{i18n>POInfo}',
    },
    UI.SelectionFields    : [
        orderNo,
        vendor_vendor,
        createdAt,
        purchOrg_purchOrg,
        purchGroup_purchGroup,
        companyCode_companyCode,
        currency_code,
        status_code
    ],
    UI.LineItem           : [
        {
            $Type             : 'UI.DataField',
            Value             : orderNo,
            @UI.Importance    : #High,
            @HTML5.CssDefaults: {width: '8em'}
        },
        {
            $Type             : 'UI.DataField',
            Value             : vendor_vendor,
            @UI.Importance    : #High,
            @HTML5.CssDefaults: {width: '10em'}
        },
        {
            $Type             : 'UI.DataField',
            Value             : purchOrg_purchOrg,
            @UI.Importance    : #Medium,
            @HTML5.CssDefaults: {width: '7em'}
        },
        {
            $Type             : 'UI.DataField',
            Value             : purchGroup_purchGroup,
            @UI.Importance    : #Medium,
            @HTML5.CssDefaults: {width: '7em'}
        },
        {
            $Type             : 'UI.DataField',
            Value             : companyCode_companyCode,
            @UI.Importance    : #Medium,
            @HTML5.CssDefaults: {width: '8em'}
        },
        {
            $Type             : 'UI.DataField',
            Value             : totalStock,
            @UI.Importance    : #Medium,
            @HTML5.CssDefaults: {width: '6em'}
        },
        {
            $Type             : 'UI.DataField',
            Value             : totalNetPrice,
            @UI.Importance    : #Medium,
            @HTML5.CssDefaults: {width: '14em'}
        },
        {
            $Type             : 'UI.DataField',
            Value             : status_code,
            @UI.Importance    : #Medium,
            @HTML5.CssDefaults: {width: '6em'},
            Criticality       : statusIcon
        },
        {
            $Type             : 'UI.DataField',
            Value             : text,
            @UI.Importance    : #Medium,
            @HTML5.CssDefaults: {width: '15em'}
        },
        {
            $Type             : 'UI.DataField',
            Value             : note,
            @UI.Importance    : #Medium,
            @HTML5.CssDefaults: {width: '10em'}
        }
    ],
    UI.PresentationVariant: {
        Text          : 'Default',
        SortOrder     : [{
            $Type     : 'Common.SortOrderType',
            Property  : orderNo,
            Descending: false
        }],
        GroupBy       : [vendor_vendor],
        Visualizations: ['@UI.LineItem'],
    }

);


annotate AdminService.OrderItems with @(
    UI    : {
        HeaderInfo         : {
            TypeName      : '{i18n>ItemTitle}',
            TypeNamePlural: '{i18n>ItemInfo}',
        },
        PresentationVariant: {
            $Type    : 'UI.PresentationVariantType',
            SortOrder: [{
                $Type     : 'Common.SortOrderType',
                Property  : orderItemNo,
                Descending: false
            }]
        },
        LineItem           : [
            {
                $Type             : 'UI.DataField',
                Value             : orderItemNo,
                @UI.Importance    : #High,
                @HTML5.CssDefaults: {width: '6em'}
            },
            {
                $Type             : 'UI.DataField',
                Value             : accountAssignmentCategory,
                @UI.Importance    : #High,
                @HTML5.CssDefaults: {width: '6em'}
            },
            {
                $Type             : 'UI.DataField',
                Value             : itemCategory,
                @UI.Importance    : #High,
                @HTML5.CssDefaults: {width: '6em'}
            },
            {
                $Type             : 'UI.DataField',
                Value             : materialNo,
                @UI.Importance    : #High,
                @HTML5.CssDefaults: {width: '12em'}
            },
            {
                $Type             : 'UI.DataField',
                Value             : materialDescr,
                @UI.Importance    : #High,
                @HTML5.CssDefaults: {width: '15em'}
            },
            // {
            //     $Type              : 'UI.DataField',
            //     Value              : unit,
            //     @UI.Importance     : #High,
            //     @HTML5.CssDefaults : {width : '9em'}
            // },

            {
                $Type             : 'UI.DataField',
                Value             : deliveryDateCategory,
                @UI.Importance    : #High,
                @HTML5.CssDefaults: {width: '6em'}
            },
            {
                $Type             : 'UI.DataField',
                Value             : deliveryDate,
                @UI.Importance    : #High,
                @HTML5.CssDefaults: {width: '9em'}
            },
            {
                $Type             : 'UI.DataField',
                Value             : stock,
                @UI.Importance    : #High,
                @HTML5.CssDefaults: {width: '10em'},
                Criticality       : stockIcon
            },
            {
                $Type             : 'UI.DataField',
                Value             : netPrice,
                @UI.Importance    : #High,
                @HTML5.CssDefaults: {width: '12em'}
            },
            // {
            //     $Type              : 'UI.DataField',
            //     Value              : priceUnit,
            //     @UI.Importance     : #High,
            //     @HTML5.CssDefaults : {width : '10em'}
            // },
            {
                $Type             : 'UI.DataField',
                Value             : materialGroup,
                @UI.Importance    : #High,
                @HTML5.CssDefaults: {width: '10em'}
            },
            {
                $Type             : 'UI.DataField',
                Value             : plant_plant,
                @UI.Importance    : #High,
                @HTML5.CssDefaults: {width: '10em'}
            },
            {
                $Type             : 'UI.DataField',
                Value             : storageLocation_storageLocation,
                @UI.Importance    : #High,
                @HTML5.CssDefaults: {width: '12em'}
            },
            {
                $Type             : 'UI.DataField',
                Value             : text,
                @UI.Importance    : #High,
                @HTML5.CssDefaults: {width: '30em'}
            }
        ]
    },
    Common: {SideEffects #stockChanged: {
        SourceProperties: [stock],
        TargetProperties: [
            'netPrice',
            'stockIcon'
        ]
    }}
);


annotate AdminService.Accounts with @(UI: {
    HeaderInfo         : {
        TypeName      : '{i18n>AccountTitle}',
        TypeNamePlural: '{i18n>AccountInfo}',
    },
    PresentationVariant: {
        $Type    : 'UI.PresentationVariantType',
        SortOrder: [{
            $Type     : 'Common.SortOrderType',
            Property  : accountAssgmtNo,
            Descending: false
        }]
    },
    LineItem           : [
        {
            $Type             : 'UI.DataField',
            Value             : accountAssgmtNo,
            @UI.Importance    : #High,
            @HTML5.CssDefaults: {width: '12em'}
        },
        {
            $Type             : 'UI.DataField',
            Value             : accountAssignmentCategory,
            @UI.Importance    : #High,
            @HTML5.CssDefaults: {width: '6em'}
        },
        {
            $Type             : 'UI.DataField',
            Value             : unloadingPoint,
            @UI.Importance    : #High,
            @HTML5.CssDefaults: {width: '10em'}
        },
        {
            $Type             : 'UI.DataField',
            Value             : goodsRecipient,
            @UI.Importance    : #High,
            @HTML5.CssDefaults: {width: '12em'}
        },
        {
            $Type             : 'UI.DataField',
            Value             : GLAccountNo,
            @UI.Importance    : #High,
            @HTML5.CssDefaults: {width: '15em'}
        },
        {
            $Type             : 'UI.DataField',
            Value             : costCenter,
            @UI.Importance    : #High,
            @HTML5.CssDefaults: {width: '15em'}
        },
        {
            $Type             : 'UI.DataField',
            Value             : functionalArea,
            @UI.Importance    : #High,
            @HTML5.CssDefaults: {width: '20em'}
        },
    ]
});


annotate AdminService.Attachments with @(
    UI    : {
        HeaderInfo         : {
            TypeName      : '{i18n>Attachments}',
            TypeNamePlural: '{i18n>Attachments}',
        },
        PresentationVariant: {
            $Type    : 'UI.PresentationVariantType',
            SortOrder: [{
                $Type     : 'Common.SortOrderType',
                Property  : fileName,
                Descending: false
            }]
        },
        LineItem           : [
            {
                $Type             : 'UI.DataField',
                Value             : data,
                @UI.Importance    : #High,
                Label             : '{i18n>File}',
                @HTML5.CssDefaults: {width: '30em'}
            },
            {
                $Type             : 'UI.DataField',
                Value             : fileType,
                @UI.Importance    : #High,
                Label             : '{i18n>FileType}',
                @HTML5.CssDefaults: {width: '8em'}
            },
            {
                $Type             : 'UI.DataField',
                Value             : fileName,
                @UI.Importance    : #High,
                Label             : '{i18n>FileName}',
                @HTML5.CssDefaults: {width: '15em'}
            },
            {
                $Type             : 'UI.DataField',
                Value             : createdAt,
                Label             : '{i18n>Createdat}',
                @HTML5.CssDefaults: {width: '15em'}
            },
            {
                $Type             : 'UI.DataField',
                Value             : createdBy,
                Label             : '{i18n>Createdby}',
                @HTML5.CssDefaults: {width: '12em'}
            },
            {
                $Type             : 'UI.DataField',
                Value             : modifiedAt,
                Label             : '{i18n>Modifiedat}',
                @HTML5.CssDefaults: {width: '15em'}
            },
            {
                $Type             : 'UI.DataField',
                Value             : modifiedBy,
                Label             : '{i18n>Modifiedby}',
                @HTML5.CssDefaults: {width: '12em'}
            }
        ]
    },
    Common: {SideEffects #FileUploaded: {
        SourceProperties: [data],
        TargetProperties: [
            'data',
            'fileType',
            'fileName'
        ]
    }}
);
