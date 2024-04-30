namespace com.win.po;

using from '../index';
using {sap.common.CodeList} from '@sap/cds/common';

entity status : CodeList {
    key code : String(1) enum {
            New       = 'N';
            Saved     = 'S';
            Synced    = 'Y';
            Cancelled = 'X';
        } default 'New';
}
