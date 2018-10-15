package com.ros.service;

import java.util.List;

import com.ros.entity.UserBean;

/**
 * 自定义UserBeanService接口
 * @author Administrator
 *
 */
public interface UserBeanService {
	//查询用户个人信息
	public List<UserBean> getUsersBean(int userId);
	//更新个人信息
	public boolean updateUsersBean(int userId);

}
