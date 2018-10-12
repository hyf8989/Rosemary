package com.ros.dao;

import java.util.List;
import com.ros.entity.UserBean;

/**
 * 自定义用户信息展示类UserBean
 * @author Administrator
 *
 */
public interface UserBeanDao {
	 //查询用户（基本和详细）
	 List<UserBean> queryUsersBean(String userName);
}
