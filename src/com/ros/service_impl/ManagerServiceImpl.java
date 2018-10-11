package com.ros.service_impl;

import com.ros.dao.ManagerDao;
import com.ros.dao_impl.ManagerDaoImpl;
import com.ros.entity.Manager;
import com.ros.service.ManagerService;

public class ManagerServiceImpl implements ManagerService {
	private ManagerDao md = new ManagerDaoImpl();
	@Override
	public Manager login(String adminName, String adminPwd) {
		// TODO Auto-generated method stub
		return md.queryManagerByNameAndPwd(adminName, adminPwd);
	}

}
