package com.ros.service;

import java.util.List;

import com.ros.entity.Manager;

public interface ManagerService {
	// 管理员登陆
	Manager login(String adminName, String adminPwd);

	// 添加管理员
	boolean addManager(Manager m);
	
	// 显示管理员信息
	List<Manager> queryManager();
	
	//删除管理员
	boolean delManager(int adminId);
}
