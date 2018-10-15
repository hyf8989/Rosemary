package com.ros.dao;

import java.util.List;
import com.ros.entity.UserBean;

/**
 * 自定义用户信息展示UserBean接口
 * @author Administrator
 *
 */
public interface UserBeanDao {
	 //查询当前用户信息
	 List<UserBean> queryUsersBean(int userId);
	 //修改用户信息
	 boolean updateUsers(int userId);
}
