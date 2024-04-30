using {com.win.po as po} from '../db/index';

@path: 'admin'
service AdminService {
  entity Orders      as projection on po.Orders;
  entity OrderItems  as projection on po.OrderItems;
  entity Accounts    as projection on po.Accounts;
  entity Attachments as projection on po.Attachments;
}
