using {com.win.po as po} from '../index';

extend po.Orders with {
    status             : Association to po.status  @readonly  @Core.Computed;
    virtual statusIcon : Integer;
    isEditable         : po.Tech_Boolean not null default true @Core.Computed;
}

extend po.OrderItems with {
    virtual stockIcon : Integer;
}
