package com.ros.dao;

import java.util.ArrayList;
import java.util.List;


import com.ros.entity.OrderInfo;
import com.ros.entity.Orders;
import com.ros.util.PageData;

/**
 * 自定义接口MyOrderDao
 * @author Administrator
 *
 */
public interface MyOrdersDao {
    
	public PageData<Orders>  queryOrderByUserId(int userId,int page,int pageSize);//根据用户编号获取用户全部订单信息
	public boolean createOrder(Orders orders);//对订单表的插入
	public boolean InsertOrderInfo(OrderInfo orderInfo);//对订单详情表进行插入
    public Orders getOrderInfoByOrderId(int orderId);//根据订单ID查询出该条订单所有信息
    public boolean setOrderStatus(int orderId);//支付成功之后，对订单状态设置为已付款
}
