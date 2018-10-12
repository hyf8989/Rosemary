package com.ros.service_impl;

import com.ros.dao.UserDao;
import com.ros.dao_impl.UserDaoImpl;
import com.ros.entity.UserBasicInfo;
import com.ros.service.UserService;
import com.ros.util.MD5Util;

public class UserServiceImpl implements UserService{

	  UserDao ud=new UserDaoImpl();//瀹炰緥鍖栫敤鎴锋煡璇ao瀵硅薄
	
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
	   * 鐢ㄦ埛鐧诲綍鏂规硶
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
}

   
   /**
    * 鐢ㄦ埛淇敼瀵嗙爜鐨勬柟娉�
    * 
    */
   @Override
public boolean updatePwd(String oldPwd, String newPwd) {

	   //鍏堝皢杈撳叆鐨勫瘑鐮佽繘琛屽姞瀵�
	   String oldPassword=MD5Util.getEncodeByMd5(oldPwd);
	   String newPassword=MD5Util.getEncodeByMd5(newPwd);
	return ud.upatePwd(oldPassword, newPassword);

}
}
