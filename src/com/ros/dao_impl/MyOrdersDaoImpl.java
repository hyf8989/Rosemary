package com.ros.dao_impl;

import java.util.ArrayList;
import java.util.List;

import com.ros.dao.MyOrdersDao;

import com.ros.entity.OrderInfo;
import com.ros.entity.OrderInfo_Re_FlowerInfo;
import com.ros.entity.Orders;
import com.ros.util.BaseDao;
import com.ros.util.PageData;

public class MyOrdersDaoImpl implements MyOrdersDao {

	/* 
	 * 订单表的插入
	 */
	@Override
	public boolean createOrder(Orders orders) {
		// TODO Auto-generated method stub
		String sql="insert into orders(orderId,userId,orderStatus,createTime,postage,updateTime,payment,orderType,address)"
				+ " values(?,?,?,?,?,?,?,?,?)";
		boolean flag=false;
		if(BaseDao.execute(sql, orders.getOrderId(),orders.getUserId(),orders.getOrderStatus(),orders.getCreateTime(),orders.getPostage(),orders.getUpdateTime(),orders.getPayment(),orders.getOrderType(),orders.getAddress())>0) {
			flag=true;
		}
		return flag;
	}

	/**   
	 * 
	 * @param orderInfo 订单详情表实体类
	 * @return   布尔值
	 * 
	 */
	@Override
	public boolean insertOrderInfo(OrderInfo orderInfo) {
		// TODO Auto-generated method stub
		String sql="insert into order_info(flowerId,orderId,quantity,totalPrice)"
				+ " values(?,?,?,?)";
		boolean flag=false;
		if(BaseDao.execute(sql, orderInfo.getFlowerId(),orderInfo.getOrderId(),orderInfo.getQuantity(),orderInfo.getTotalPrice())>0) {
			flag=true;
		}
		return flag;
	}

	/**   
	根据订单编号查询订单信息
	 */
	@Override
	public Orders getOrderInfoByOrderId(int orderId) {
		// TODO Auto-generated method stub
		String sql="select * from orders where orderId =?";
		ArrayList<Orders> list=(ArrayList<Orders>) BaseDao.select(sql, Orders.class, orderId);
		if(list.size()>0) {
			return list.get(0);
		}
		else {
			return null;
		}
		
	}

	/**   
	 * 支付成功对订单的操作
	 */
	@Override
	public boolean setOrderStatus(int orderId) {
		// TODO Auto-generated method stub
		String sql="update orders set orderStatus=1 where orderId=?";
		boolean flag=false;
		if(BaseDao.execute(sql, orderId)>0) {
			flag=true;
		}
		return flag;
	}

	/**   
	 * 根据用户编号获得订单信息
	 */
	@Override
	public PageData<Orders>  queryOrderByUserId(int userId,int page,int pageSize) {
		// TODO Auto-generated method stub
		String sql="select * from orders where userId=? order by createTime desc";
	    PageData<Orders> pd=BaseDao.getPage(sql, page, pageSize, Orders.class, userId);
		return pd;
	  
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
		public PageData<Orders> queryOrdersByPage(int page, int pageSize, String keywords) {
			String sql="SELECT a.orderId,b.userName,a.orderStatus,a.address,a.createTime,a.payment from orders a INNER JOIN user_basicinfo b  ON a.userId = b.userId WHERE a.orderId LIKE binary ? OR b.userName LIKE binary ? or a.address like binary ? or a.createTime like binary ? order by createTime desc";
			PageData<Orders> pdo=(PageData<Orders>)BaseDao.getPage(sql,page, pageSize, Orders.class, "%"+keywords+"%","%"+keywords+"%","%"+keywords+"%","%"+keywords+"%");
			
			return pdo;
		}
		
		/**
		 * 
		 * 根据订单状态查询订单记录
		 *  @param status 订单状态
		 *  return List<Orders> 
		 */
		 
		@Override
		public List<Orders> orderQueryByStatus(int status) {
			String sql="SELECT a.orderId,b.userName,a.orderStatus,a.address,a.createTime,a.payment from orders a INNER JOIN user_basicinfo b  ON a.userId = b.userId WHERE a.orderStatus=?";
			List<Orders> list=(List<Orders>)BaseDao.select(sql, Orders.class, status);
			
			return list;
		}
		/**
		 * 根据订单编号更改订单信息
		 *  @param orderId 订单编号
		 *  @param orderStatus 订单状态
		 *  @param sendTime 发货时间
		 *  return true/更新成功 false/更新失败
		 */
		@Override
		public boolean updateOrder(int orderId, int orderStatus, String sendTime) {
			String sql="update orders set orderStatus=?,sendTime=? where orderId=?";
			
			return BaseDao.execute(sql, orderStatus,sendTime,orderId)>0;
		}
		/**
		 * 根据订单编号获取订单中的鲜花等详情
		 *  @param orderId 订单编号
		 *  return List<OrderInfo_Re_FlowerInfo> 订单详情信息对象的集合
		 */
		@Override
		public List<OrderInfo_Re_FlowerInfo> queryOrderDetailInfoByOrderId(int orderId) {
			String sql="SELECT b.flowerName,b.price,a.totalPrice,a.quantity,c.sendTime FROM order_info a INNER JOIN flower_info b ON a.flowerId=b.flowerId INNER JOIN orders c ON c.orderId =a.orderId WHERE c.orderId=?";
			List<OrderInfo_Re_FlowerInfo> list=(List<OrderInfo_Re_FlowerInfo>)BaseDao.select(sql, OrderInfo_Re_FlowerInfo.class, orderId);
			
			return list;
		}
}
