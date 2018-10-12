package com.ros.dao;

import com.ros.entity.UserBasicInfo;
/**
 * 自定义的UserDao 接口
 */
public interface UserDao {
   public boolean register(String userName);//用户注册方法（判断）
   UserBasicInfo login(String userName,String userPwd);//用户登录方法
<<<<<<< HEAD
   public boolean insertUser(UserBasicInfo ub);//注册成功时进行插入
=======
   boolean upatePwd(String oldPwd,String newPwd);//用户修改密码
>>>>>>> branch 'master' of https://github.com/hyf8989/Rosemary.git
}
