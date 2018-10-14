package com.ros.service;

import com.ros.entity.UserBasicInfo;
import com.ros.entity.UserDetailInfo;

public interface UserService {
	public boolean register(String userName);//用户注册
	UserBasicInfo login(String userName,String userPwd);//用户登录

	public boolean insertUser(UserBasicInfo ub);//用户注册成功时进行插入

	boolean updatePwd(String userName,String updateTime,String newPwd);//用户修改密码
	public UserBasicInfo getUserBasicInfoByUserName(String userName);//根据传入的用户名获得用户全部基本信息
	public boolean insertUserDetail(UserDetailInfo uDI);
}
