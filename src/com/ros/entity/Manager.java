package com.ros.entity;

public class Manager {
	private int adminId;// 管理员编号
	private String adminName;// 管理员账号
	private String adminPwd;// 密码
	private int adminStatus;// 管理员状态：0 :锁定 1：解锁;
	private int adminLevel;// 管理员身份：0：系统管理员 1：店铺管理员

	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminPwd() {
		return adminPwd;
	}

	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}

	public int getAdminStatus() {
		return adminStatus;
	}

	public void setAdminStatus(int adminStatus) {
		this.adminStatus = adminStatus;
	}

	public int getAdminLevel() {
		return adminLevel;
	}

	public void setAdminLevel(int adminLevel) {
		this.adminLevel = adminLevel;
	}

	public Manager() {
		super();
	}

	public Manager(int adminId, String adminName, String adminPwd, int adminStatus, int

	adminLevel) {
		super();
		this.adminId = adminId;
		this.adminName = adminName;
		this.adminPwd = adminPwd;
		this.adminStatus = adminStatus;
		this.adminLevel = adminLevel;
	}
	
	public Manager(String adminName, String adminPwd, int adminStatus, int adminLevel) {
		super();
		this.adminName = adminName;
		this.adminPwd = adminPwd;
		this.adminStatus = adminStatus;
		this.adminLevel = adminLevel;
	}

	@Override
	public String toString() {
		return "Manager [adminId=" + adminId + ", adminName=" + adminName + ", adminPwd=" + adminPwd + ", adminStatus="
				+ adminStatus + ", adminLevel=" + adminLevel + "]";
	}

}
