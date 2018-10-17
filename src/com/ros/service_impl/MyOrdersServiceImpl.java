package com.ros.service_impl;

import java.util.List;

import com.ros.dao.MyOrdersDao;
import com.ros.dao_impl.MyOrdersDaoImpl;
import com.ros.entity.MyOrders;
import com.ros.entity.OrderInfo;
import com.ros.entity.Orders;
import com.ros.service.MyOrdersService;

public class MyOrdersServiceImpl implements MyOrdersService {
	public MyOrdersDao mod = new MyOrdersDaoImpl();

	@Override
	public List<MyOrders> getMyOrdersByUserId(int userId) {
		// TODO Auto-generated method stub
		return mod.queryMyOrdersByUserId(userId);
	}

	/* (non-Javadoc)
	 * @see com.ros.service.MyOrdersService#createOrder(com.ros.entity.Orders)
	 */
	@Override
	public boolean createOrder(Orders orders) {
		// TODO Auto-generated method stub
		return mod.createOrder(orders); 
	}

	/**   
	 订单详情表的插入
	 */
	@Override
	public boolean InsertOrderInfo(OrderInfo orderInfo) {
		// TODO Auto-generated method stub
		return mod.InsertOrderInfo(orderInfo);
	}

	/**   
	 * <p>Title: getOrderInfoByOrderId</p>   
	 * <p>Description: </p>   
	 * @param orderId
	 * @return   
	 * @see com.ros.service.MyOrdersService#getOrderInfoByOrderId(int)   
	 */
	@Override
	public Orders getOrderInfoByOrderId(int orderId) {
		// TODO Auto-generated method stub
		return mod.getOrderInfoByOrderId(orderId);
	}

	/**   
	 支付成功之后对订单状态进行修改 
	 */
	@Override
	public boolean setOrderStatus(int orderId) {
		// TODO Auto-generated method stub
		return mod.setOrderStatus(orderId);
	}

}
