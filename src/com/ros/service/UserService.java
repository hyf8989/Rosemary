package com.ros.service;

import com.ros.entity.UserBasicInfo;

public interface UserService {
	public boolean register(String userName);//用户注册
	UserBasicInfo login(String userName,String userPwd);//用户登录
	boolean updatePwd(String oldPwd,String newPwd);//用户修改密码
}
