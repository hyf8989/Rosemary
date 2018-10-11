package com.ros.dao;

import com.ros.entity.Manager;

public interface ManagerDao {
	//管理员登陆验证的查询
	Manager queryManagerByNameAndPwd(String adminName,String adminPwd);
}