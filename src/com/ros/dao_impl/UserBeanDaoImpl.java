package com.ros.dao_impl;

import java.util.List;

import com.ros.dao.UserBeanDao;
import com.ros.entity.UserBean;
import com.ros.util.BaseDao;

public class UserBeanDaoImpl implements UserBeanDao {

	/**
	 * 查询用户个人信息的方法
	 * @param userName 用户名
	 *
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<UserBean> queryUsersBean(String userName) {
		// TODO Auto-generated method stub
		String sql = "select a.userName,a.createTime,a.updateTime,b.name,b.userEmail,b.userTel from user_basicinfo a INNER JOIN user_detailsinfo b on a.userId=b.userId where a.userName=?";
		return (List<UserBean>) BaseDao.select(sql, UserBean.class, userName);
	}


}
