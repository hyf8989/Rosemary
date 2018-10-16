package com.ros.service;

import java.util.List;

import com.ros.entity.UserBasicInfo;
import com.ros.entity.UserBean;
import com.ros.entity.UserDetailInfo;

/**
 * 自定义UserBeanService接口
 * @author Administrator
 *
 */
public interface UserBeanService {
	//查询用户个人信息
	public List<UserBean> getUsersBean(int userId);

	//更新个人详细信息
	public boolean updateUserDetailInfo(UserDetailInfo udi);

}
