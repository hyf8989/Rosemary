package com.ros.dao;

import java.util.ArrayList;
import java.util.List;


import com.ros.entity.OrderInfo;
import com.ros.entity.OrderInfo_Re_FlowerInfo;
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
    public PageData<Orders> queryOrdersByPage(int page,int pageSize,String keywords);//查询所有的订单记录并分页、模糊查找(后台)
    List<Orders> orderQueryByStatus(int status);//根据订单状态查询订单信息（后台）
    boolean updateOrder(int orderId,int orderStatus,String sendTime);//根据订单编号更改订单信息（后台,只能更新订单状态和发货时间）
    List<OrderInfo_Re_FlowerInfo> queryOrderDetailInfoByOrderId(int orderId);//根据订单编号查询订单的鲜花等详情信息
}
