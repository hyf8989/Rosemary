package com.ros.dao;

import com.ros.entity.UserBasicInfo;
import com.ros.entity.UserDetailInfo;
/**
 *UserDao 接口
 */
public interface UserDao {

 

   public boolean register(String userName);//用户注册方法（判断）
   UserBasicInfo login(String userName,String userPwd);//用户登录方法

   public boolean insertUser(UserBasicInfo ub);//注册成功时进行插入

   boolean upatePwd(String oldPwd,String newPwd);//用户修改密码
   public UserBasicInfo getUserBasicInfoByUserName(String userName);//根据用户名查询出用户信息
   public boolean insertUserDetail(UserDetailInfo uDI);//注册成功时同时插入用户详情表
 
   

}
