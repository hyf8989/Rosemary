package com.ros.service_impl;

import java.util.ArrayList;
import java.util.List;

import com.ros.dao.MyOrdersDao;
import com.ros.dao_impl.MyOrdersDaoImpl;

import com.ros.entity.OrderInfo;
import com.ros.entity.OrderInfo_Re_FlowerInfo;
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
	public boolean insertOrderInfo(OrderInfo orderInfo) {
		// TODO Auto-generated method stub
		return mod.insertOrderInfo(orderInfo);
	}

	/**   
	 *  根据订单编号获取订单信息
	 * @param orderId 订单编号
	 * @return   订单对象
	 * 
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

	/**
	 * 
	 * 查询所有的订单记录
	 *  @param page 当前页码
	 *  @param pageSize 每页的记录的条数
	 *  @param keywords 关键词
	 *  return PageData<Orders> 
	 */
@Override
public PageData<Orders> getOrderByPage(int page, int pageSize, String keywords) {
	// TODO Auto-generated method stub
	return mod.queryOrdersByPage(page, pageSize, keywords);
}

/**
 * 
 * 根据订单状态查询订单记录
 *  @param status 订单状态
 *  return List<Orders> 
 */
	@Override
	public List<Orders> getOrderByStatus(int status) {
		// TODO Auto-generated method stub
		return mod.orderQueryByStatus(status);
	}
	
	/**
	 * 根据订单编号更改订单信息
	 *  @param orderId 订单编号
	 *  @param orderStatus 订单状态
	 *  @param sendTime 订发货时间
	 *  return true/更新成功 false/更新失败
	 */
	@Override
	public boolean updateOrder(int orderId, int orderStatus, String sendTime) {
		// TODO Auto-generated method stub
		return mod.updateOrder(orderId, orderStatus, sendTime);
	}
	
	/**
	 * 根据订单编号更改订单信息
	 *  @param orderId 订单编号
	 *  return List<OrderInfo_Re_FlowerInfo> 订单详情信息对象的集合
	 */
	@Override
	public List<OrderInfo_Re_FlowerInfo> queryOrderDetailInfoByOrderId(int orderId) {
		// TODO Auto-generated method stub
		return mod.queryOrderDetailInfoByOrderId(orderId);
	}
}
