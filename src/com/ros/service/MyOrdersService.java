package com.ros.service;

import java.util.ArrayList;
import java.util.List;


import com.ros.entity.OrderInfo;
import com.ros.entity.Orders;
import com.ros.util.PageData;

/**
 * 自定义Service接口MyOrdersService
 * @author Administrator
 *
 */
public interface MyOrdersService {

	public PageData<Orders>  queryOrderByUserId(int userId,int page,int pageSize);//用户编号查询订单信息
	public boolean createOrder(Orders orders);//订单表的生成
	public boolean InsertOrderInfo(OrderInfo orderInfo);//订单详情表的插入
	public Orders getOrderInfoByOrderId(int orderId);//根据订单编号查询订单信息
	public boolean setOrderStatus(int orderId);//支付成功之后对订单进行更改
}
