using {com.win.po as po} from '../index';

extend po.Orders with {
    status             : Association to po.status  @readonly  @Core.Computed;
    virtual statusIcon : Integer;
    isEditable         : po.Tech_Boolean not null default true @Core.Computed;
    attachments        : Composition of many po.Attachments
                             on attachments.order = $self;
}

extend po.OrderItems with {
    virtual stockIcon : Integer;
    attachments       : Composition of many po.Attachments
                            on attachments.orderItem = $self;
}
