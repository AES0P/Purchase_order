using {com.win.po as po} from '../db/index';

@path: 'admin'
service AdminService {
  entity Orders     as projection on po.Orders;
  entity OrderItems as projection on po.OrderItems;
}
