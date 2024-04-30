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
