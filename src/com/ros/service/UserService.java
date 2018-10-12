package com.ros.service;

import com.ros.entity.UserBasicInfo;

public interface UserService {
	public boolean register(String userName);//用户注册
	UserBasicInfo login(String userName,String userPwd);//用户登录
	public boolean insertUser(UserBasicInfo ub);//用户注册成功时进行插入
}
