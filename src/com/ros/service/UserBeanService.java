package com.ros.service;

import java.util.List;

import com.ros.entity.UserBean;

/**
 * 自定义UserBeanService接口
 * @author Administrator
 *
 */
public interface UserBeanService {
	public List<UserBean> getUsers(String userName);//查询用户

}
