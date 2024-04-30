using {com.win.po as po} from '../db/index';

@path: 'admin'
service AdminService {
  entity Orders as projection on po.Orders;
}
