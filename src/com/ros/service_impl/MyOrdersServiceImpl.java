package com.ros.service_impl;

import java.util.List;

import com.ros.dao.MyOrdersDao;
import com.ros.dao_impl.MyOrdersDaoImpl;
import com.ros.entity.MyOrders;
import com.ros.service.MyOrdersService;

public class MyOrdersServiceImpl implements MyOrdersService {
	public MyOrdersDao mod = new MyOrdersDaoImpl();

	@Override
	public List<MyOrders> getMyOrdersByUserId(int userId) {
		// TODO Auto-generated method stub
		return mod.queryMyOrdersByUserId(userId);
	}

}
