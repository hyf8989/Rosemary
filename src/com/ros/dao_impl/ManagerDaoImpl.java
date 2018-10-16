package com.ros.dao_impl;

import java.util.List;

import com.ros.dao.ManagerDao;
import com.ros.entity.Manager;
import com.ros.util.BaseDao;

public class ManagerDaoImpl implements ManagerDao {
	/**
	 * 实现ManagerDao中的验证登录的查询方法
	 */
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

	/**
	 * 实现ManagerDao中增加管理员的方法
	 */
	@Override
	public boolean addManager(Manager m) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO admin(adminId,adminName, adminPwd, adminStatus,adminLevel) VALUES (null,?, ?, ?, ?)";
		return BaseDao.execute(sql, m.getAdminName(), m.getAdminPwd(), m.getAdminStatus(), m.getAdminLevel()) > 0;

	}

	/**
	 * 实现ManagerDao中显示所有管理员信息的方法
	 */
	@Override
	public List<Manager> queryManager() {
		// TODO Auto-generated method stub
		List<Manager> list = (List<Manager>) BaseDao.select("select  * from admin", Manager.class);
		return list;
	}

	/**
	 * 实现ManagerDao中的删除方法
	 */
	@Override
	public boolean delManager(int adminId) {
		// TODO Auto-generated method stub
		String sql = "delete from admin where adminName=?";
		return BaseDao.execute(sql, adminId) > 0;
	}

	/**
	 * 重置密码
	 */
	@Override
	public boolean updateManagerPwd(String adminName) {
		// TODO Auto-generated method stub
		// 21232f297a57a5a743894a0e4a801fc3 表示加密过的 admin
		String sql = "UPDATE admin SET adminPwd='21232f297a57a5a743894a0e4a801fc3' WHERE adminName=?";
		return BaseDao.execute(sql, adminName) > 0;
	}
	/**
	 * 锁定
	 */
	@Override
	public boolean lockManagerStatus(String adminName) {
		// TODO Auto-generated method stub

		String sql = "UPDATE admin SET adminStatus='0' WHERE adminName=?";

		return BaseDao.execute(sql, adminName) > 0;
	}
	@Override
	public boolean clearManagerStatus(String adminName) {
		// TODO Auto-generated method stub
		String sql = "UPDATE admin SET adminStatus='1' WHERE adminName=?";

		return BaseDao.execute(sql, adminName) > 0;
	}
}
