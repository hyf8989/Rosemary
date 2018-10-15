package com.ros.service_impl;

import java.util.List;

import com.ros.dao.ManagerDao;
import com.ros.dao_impl.ManagerDaoImpl;
import com.ros.entity.Manager;
import com.ros.service.ManagerService;

public class ManagerServiceImpl implements ManagerService {
	ManagerDao md = new ManagerDaoImpl();

	/**
	 * 实现ManagerDao登录验证查询
	 */
	@Override
	public Manager login(String adminName, String adminPwd) {
		// TODO Auto-generated method stub
		return md.queryManagerByNameAndPwd(adminName, adminPwd);
	}
	/**
	 * 实现ManagerDao添加管理员的方法
	 */
	@Override
	public boolean addManager(Manager m) {
		// TODO Auto-generated method stub
		return md.addManager(m);
	}
	/**
	 * 实现ManagerDao显示全部管理员信息的方法
	 */
	@Override
	public List<Manager> queryManager() {
		// TODO Auto-generated method stub
		return md.queryManager();
	}
	/**
	 * 实现ManagerDao删除管理员的方法
	 */
	@Override
	public boolean delManager(int adminId) {
		// TODO Auto-generated method stub
		return md.delManager(adminId);
	}
	
	@Override
	public boolean updateManagerPwd(String adminName) {
		// TODO Auto-generated method stub
		return md.updateManagerPwd(adminName);
	}
}
