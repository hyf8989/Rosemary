package com.ros.service_impl;

import com.ros.dao.UserDao;
import com.ros.dao_impl.UserDaoImpl;
import com.ros.service.UserService;

public class UserServiceImpl implements UserService{

	  UserDao ud=new UserDaoImpl();//实例化用户查询Dao对象
	/* (non-Javadoc)
	 * @see com.ros.service.UserService#register(java.lang.String)
	 */
	@Override
	public boolean register(String userName) {
		// TODO Auto-generated method stub
		return false;
	}

}
