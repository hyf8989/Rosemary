package com.ros.service_impl;

import java.util.List;

import com.ros.dao.UserBeanDao;
import com.ros.dao_impl.UserBeanDaoImpl;
import com.ros.entity.UserBean;
import com.ros.service.UserBeanService;

public class UserBeanServiceImpl implements UserBeanService {
	private UserBeanDao ubd = new UserBeanDaoImpl();

	@Override
	public List<UserBean> getUsers(String userName) {
		// TODO Auto-generated method stub
		return ubd.queryUsersBean(userName);
	}

}
