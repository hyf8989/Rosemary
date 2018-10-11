package com.ros.dao_impl;
import java.util.ArrayList;

import com.ros.dao.UserDao;
import com.ros.entity.UserBasicInfo;
import com.ros.util.BaseDao;;

public class UserDaoImpl implements UserDao  {

	/* (non-Javadoc)
	 * @see com.ros.dao.UserDao#register()
	 */
	
	@Override
	/*
	 *  
	 * 
	 */
	public boolean register(String userName) {
		// TODO Auto-generated method stub
		String sql="select * from user_basicinfo where userName=?";
		ArrayList<UserBasicInfo> list=(ArrayList<UserBasicInfo>) BaseDao.select(sql, UserBasicInfo.class, userName);
		if(list.size()>0) {
			return false;
		}
		else {
			return true;
		}
		
	}

}
