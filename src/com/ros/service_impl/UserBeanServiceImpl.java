package com.ros.service_impl;

import java.util.List;

import com.ros.dao.UserBeanDao;
import com.ros.dao_impl.UserBeanDaoImpl;
import com.ros.entity.UserBasicInfo;
import com.ros.entity.UserBean;
import com.ros.entity.UserDetailInfo;
import com.ros.service.UserBeanService;

public class UserBeanServiceImpl implements UserBeanService {
	private UserBeanDao ubd = new UserBeanDaoImpl();

	/**
	 * 查询个人信息
	 */
	@Override
	public List<UserBean> getUsersBean(int userId) {
		// TODO Auto-generated method stub
		return ubd.queryUsersBean(userId);
	}

	/**
	 * 更新用户信息
	 */
	@Override
	public boolean updateUserDetailInfo(UserDetailInfo udi) {
		// TODO Auto-generated method stub
		return ubd.updateUserDetailInfo(udi);
	}
}
