namespace com.win.po;

using {
    cuid,
    managed
} from '@sap/cds/common';

using from '../index';

entity Attachments : cuid, managed {
    order     : Association to po.Orders;
    orderItem : Association to po.OrderItems;
    fileName  : String;
    fileType  : String       @Core.IsMediaType;
    data      : LargeBinary  @Core.MediaType: fileType  @Core.ContentDisposition.Filename: fileName;
}

// input validation
annotate Attachments with {
    fileName @mandatory;
    fileType @mandatory;
}
