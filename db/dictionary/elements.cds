namespace com.win.po;

//String variables
type orderNo                   : String(10);
type vendor                    : String(10);
type purchOrg                  : String(4);
type purchGroup                : String(3);
type companyCode               : String(4);
type description               : String(4096);

type accountAssignmentCategory : String(1);
type itemCategory              : String(1);
type materialNo                : String(40);
type materialDescr             : String(40);
type deliveryDateCategory      : String(1);
type materialGroup             : String(9);
type plant                     : String(4);
type storageLocation           : String(4);

type unloadingPoint            : String(25);
type goodsRecipient            : String(12);
type GLAccountNo               : String(10);
type costCenter                : String(10);
type functionalArea            : String(16);

type country                   : String(3);
type name1                     : String(35);
type name2                     : String(35);
type name3                     : String(35);
type name4                     : String(35);
type city                      : String(40);
type street                    : String(35);
type address                   : String(10);

//Numerical variables
type stock                     : Decimal(13, 3);
type price                     : Decimal(11, 2);
