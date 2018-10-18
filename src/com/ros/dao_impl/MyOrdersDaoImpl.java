package com.ros.dao_impl;

import java.util.ArrayList;
import java.util.List;

import com.ros.dao.MyOrdersDao;

import com.ros.entity.OrderInfo;
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
	public boolean InsertOrderInfo(OrderInfo orderInfo) {
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

}
