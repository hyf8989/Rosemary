package com.ros.dao_impl;
import java.util.ArrayList;

import com.ros.dao.UserDao;
import com.ros.entity.UserBasicInfo;
import com.ros.entity.UserDetailInfo;
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

/*
 * 
 * 用户注册判断成功时，进行用户基本表的插入
 */
	@Override
	public boolean insertUser(UserBasicInfo ub) {
		// TODO Auto-generated method stub
		String sql="insert into user_basicinfo(userName,userPwd,createTime,updateTime) values (?,?,?,?)";
		
		return BaseDao.execute(sql, ub.getUserName(),ub.getUserPwd(),ub.getCreateTime(),ub.getUpdateTime())>0;
	}


@Override
public boolean upatePwd(String oldPwd, String newPwd) {
	// TODO Auto-generated method stub
	return false;
}


/**   
   根据传入的用户名得出用户的所有基本信息
 * @param UserName 用户名
 * @return   用户的基本信息
 * @see com.ros.dao.UserDao#getUserBasicInfoByUserName(java.lang.String)   
 */
@Override
public UserBasicInfo getUserBasicInfoByUserName(String userName) {
	// TODO Auto-generated method stub
	String sql="select * from user_basicinfo where userName=?";
	ArrayList<UserBasicInfo> list=(ArrayList<UserBasicInfo>) BaseDao.select(sql, UserBasicInfo.class, userName);
	if(list.size()>0) {
		return list.get(0);
	}
	else {
		return null;
	}
	
}


/**   
 * <p>Title: insertUserDetail</p>   
 * <p>Description: </p>   
 * @param uDI
 * @return   
 * @see com.ros.dao.UserDao#insertUserDetail(com.ros.entity.UserDetailInfo)   
 */
@Override
public boolean insertUserDetail(UserDetailInfo uDI) {
	// TODO Auto-generated method stub
	String sql="insert into user_detailsinfo(userId,userTel,createTime,updateTime) values(?,?,?,?)";
	boolean flag=BaseDao.execute(sql, uDI.getUserId(),uDI.getUserTel(),uDI.getCreateTime(),uDI.getUpdateTime())>0;
	
	return flag;
}

}
