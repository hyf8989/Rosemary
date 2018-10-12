package com.ros.dao_impl;
import java.util.ArrayList;

import com.ros.dao.UserDao;
import com.ros.entity.UserBasicInfo;
import com.ros.util.BaseDao;;
/**
 * 自定义UserDao接口的实现类：UserDaoImpl
 * @author Administrator
 *
 */
public class UserDaoImpl implements UserDao  {

	/* (non-Javadoc)
	 * @see com.ros.dao.UserDao#register()
	 */
	
	@Override
	/*
	 * 用户注册方法
	 * @para userName  用户名
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
	
	
	/**
	 * 用户登录方法
	 * @param userName 用户名
	 *   @param userPwd 用户密码
	 *   return UserBasicInfo类
	 */
	@Override
	public UserBasicInfo login(String userName, String userPwd) {
		String sql="select * from user_basicinfo where userName=? and userPwd=?";
		ArrayList<UserBasicInfo> list=(ArrayList<UserBasicInfo>) BaseDao.select(sql, UserBasicInfo.class, userName,userPwd);
		if(list.size()>0) {
			return list.get(0);
		}
		else {
			return null;
		}

	}

	/**
	 * 用户修改密码的方法
	 * @param oldPwd 用户原来的密码
	 *   @param userPwd 用户设置的新密码
	 *   return true/用户密码更新成功   false/用户密码更新失败
	 */
	@Override
	public boolean upatePwd(String oldPwd, String newPwd) {
		String sql="update user_basicinfo set userPwd=? where userPwd=?";
		
		return BaseDao.execute(sql, oldPwd,newPwd)>0;
	}
}
