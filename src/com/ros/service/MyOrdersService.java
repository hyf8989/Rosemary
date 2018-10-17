package com.ros.service;

import java.util.List;

import com.ros.entity.MyOrders;
import com.ros.entity.Orders;

/**
 * 自定义Service接口MyOrdersService
 * @author Administrator
 *
 */
public interface MyOrdersService {

	//查询订单记录
	List<MyOrders> getMyOrdersByUserId(int userId);
	public boolean createOrder(Orders orders);//订单表的生成
	
}
