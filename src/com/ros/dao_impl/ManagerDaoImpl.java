package com.ros.dao_impl;

import java.util.List;


import com.ros.dao.ManagerDao;
import com.ros.entity.Manager;
import com.ros.util.BaseDao;

public class ManagerDaoImpl implements ManagerDao {
	//
	@Override
	public Manager queryManagerByNameAndPwd(String adminName, String adminPwd) {
		// TODO Auto-generated method stub
		String sql = "select  * from admin where adminName=? and adminPwd=?";
		List<Manager> list = (List<Manager>) BaseDao.select(sql, Manager.class, adminName, adminPwd);

		if (list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

}
