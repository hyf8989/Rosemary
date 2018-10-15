package com.ros.dao_impl;

import java.util.List;

import com.ros.dao.MyOrdersDao;
import com.ros.entity.MyOrders;
import com.ros.util.BaseDao;

public class MyOrdersDaoImpl implements MyOrdersDao {

	/**
	 * 根据用户Id查询订单
	 * @param userId 用户编号
	 * @return List<MyOrders>
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<MyOrders> queryMyOrdersByUserId(int userId) {
		// TODO Auto-generated method stub
		String sql = "SELECT a.orderId,a.orderStatus,a.payment,a.postage,a.sendTime,a.createTime,b.quantity,b.totalPrice,c.flowerName,c.description,c.price,c.sPicture FROM orders a INNER JOIN order_info b ON a.orderId = b.orderId INNER JOIN flower_info c on b.flowerId= c.flowerId where userId=?";
		return (List<MyOrders>) BaseDao.select(sql, MyOrders.class, userId);
	}

}
