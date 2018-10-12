package com.ros.dao;

import com.ros.entity.UserBasicInfo;
/**
 * 自定义的UserDao 接口
 */
public interface UserDao {
   public boolean register(String userName);//用户注册方法
   UserBasicInfo login(String userName,String userPwd);//用户登录方法
   boolean upatePwd(String oldPwd,String newPwd);//用户修改密码
}
