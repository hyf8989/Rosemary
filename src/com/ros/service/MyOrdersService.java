package com.ros.service;

import java.util.List;

import com.ros.entity.MyOrders;
import com.ros.entity.OrderInfo;
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
	public boolean InsertOrderInfo(OrderInfo orderInfo);//订单详情表的插入
	public Orders getOrderInfoByOrderId(int orderId);//根据订单编号查询订单信息
	public boolean setOrderStatus(int orderId);//支付成功之后对订单进行更改
}
