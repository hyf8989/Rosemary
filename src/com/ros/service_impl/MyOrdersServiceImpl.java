package com.ros.service_impl;

import java.util.ArrayList;
import java.util.List;

import com.ros.dao.MyOrdersDao;
import com.ros.dao_impl.MyOrdersDaoImpl;

import com.ros.entity.OrderInfo;
import com.ros.entity.Orders;
import com.ros.service.MyOrdersService;
import com.ros.util.PageData;

public class MyOrdersServiceImpl implements MyOrdersService {
	public MyOrdersDao mod = new MyOrdersDaoImpl();

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

	/**   
	 * <p>Title: queryOrderByUserId</p>   
	 * <p>Description: </p>   
	 * @param userId
	 * @return   
	 * @see com.ros.service.MyOrdersService#queryOrderByUserId(int)   
	 */
	@Override
	public PageData<Orders>  queryOrderByUserId(int userId,int page,int pageSize) {
		// TODO Auto-generated method stub
		return mod.queryOrderByUserId( userId, page, pageSize);
	}

}
