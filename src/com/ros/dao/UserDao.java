package com.ros.dao;

import com.ros.entity.UserBasicInfo;
/**
 * 鑷畾涔夌殑UserDao 鎺ュ彛
 */
public interface UserDao {
   public boolean register(String userName);//鐢ㄦ埛娉ㄥ唽鏂规硶锛堝垽鏂級
   UserBasicInfo login(String userName,String userPwd);//鐢ㄦ埛鐧诲綍鏂规硶

   public boolean insertUser(UserBasicInfo ub);//娉ㄥ唽鎴愬姛鏃惰繘琛屾彃鍏�

   boolean upatePwd(String oldPwd,String newPwd);//鐢ㄦ埛淇敼瀵嗙爜
 
}
