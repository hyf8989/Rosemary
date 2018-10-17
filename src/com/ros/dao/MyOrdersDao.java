package com.ros.dao;

import java.util.List;

import com.ros.entity.MyOrders;
import com.ros.entity.Orders;

/**
 * 自定义接口MyOrderDao
 * @author Administrator
 *
 */
public interface MyOrdersDao {

	List<MyOrders> queryMyOrdersByUserId(int userId);//根据用户Id查询订单信息
	public boolean createOrder(Orders orders);//对订单表的插入
}
