using from '../../srv/admin-service';

annotate AdminService.Orders with {
    ID          @UI.Hidden  @UI.HiddenFilter;
    orderNo     @Common.FieldControl: #ReadOnly;
    status      @Common.FieldControl: #ReadOnly;
    statusIcon  @UI.Hidden  @UI.HiddenFilter;
    text        @UI.MultiLineText   : true;
    note        @UI.MultiLineText   : true;
    currency    @Common.FieldControl: #ReadOnly;
};


annotate AdminService.Attachments with {
    ID        @UI.Hidden  @UI.HiddenFilter;
    order     @UI.Hidden  @UI.HiddenFilter;
    fileName  @UI.Hidden  @UI.HiddenFilter;
    fileType  @UI.Hidden  @UI.HiddenFilter;
};
