package com.ros.service;

import java.util.List;

import com.ros.entity.UserBasicInfo;
import com.ros.entity.UserBean;
import com.ros.entity.UserDetailInfo;
import com.ros.util.PageData;

public interface UserService {
	public boolean register(String userName);// 用户注册

	UserBasicInfo login(String userName, String userPwd);// 用户登录

	public boolean insertUser(UserBasicInfo ub);// 用户注册成功时进行插入

	boolean updatePwd(String userName, String updateTime, String newPwd);// 用户修改密码

	public UserBasicInfo getUserBasicInfoByUserName(String userName);// 根据传入的用户名获得用户全部基本信息

	public boolean insertUserDetail(UserDetailInfo uDI);

	/**
	 * @Title: queryUsersBean
	 * @Description: TODO(后台用户信息展示)
	 * @return List<UserBean> 返回类型
	 */
	List<UserBean> queryUsersBean();

	/**
	 * @Title: queryUserBeanByPage
	 * @Description: TODO(后台用户管理分页)
	 * @param page
	 * @param pageSize
	 * @param keywords
	 * @return PageData<UserBean> 返回类型
	 */
	PageData<UserBean> queryUserBeanByPage(int page, int pageSize, String keywords);

	public boolean addUsers(UserBasicInfo ub);// 后台添加用户
}
