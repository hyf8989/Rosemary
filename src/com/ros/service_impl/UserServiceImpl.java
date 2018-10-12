package com.ros.service_impl;

import com.ros.dao.UserDao;
import com.ros.dao_impl.UserDaoImpl;
import com.ros.entity.UserBasicInfo;
import com.ros.service.UserService;
import com.ros.util.MD5Util;

public class UserServiceImpl implements UserService{

	  UserDao ud=new UserDaoImpl();//实例化用户查询Dao对象
	
	  /*
	   * 用户注册方法
	   * 
	   */
	@Override
	public boolean register(String userName) {
		// TODO Auto-generated method stub
		
		return ud.register(userName);
	}
	
	/*
	   * 用户登录方法
	   * 
	   */
   @Override
  public UserBasicInfo login(String userName, String userPwd) {
	
	return ud.login(userName, userPwd);
}


@Override
public boolean insertUser(UserBasicInfo ub) {
	// TODO Auto-generated method stub
	
	return ud.insertUser(ub);

   
   /**
    * 用户修改密码的方法
    * 
    */
   @Override
public boolean updatePwd(String oldPwd, String newPwd) {

	   //先将输入的密码进行加密
	   String oldPassword=MD5Util.getEncodeByMd5(oldPwd);
	   String newPassword=MD5Util.getEncodeByMd5(newPwd);
	return ud.upatePwd(oldPassword, newPassword);

}
}
