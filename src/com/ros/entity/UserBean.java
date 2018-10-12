package com.ros.entity;

/**
 * 用户信息展示的实体类
 * @author Administrator
 *
 */
public class UserBean {
	private String userName;
	private String sex;
	private String createTime;
	private String updateTime;
	private String name;
	private int userTel;
	private String userEmail;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getUserTel() {
		return userTel;
	}
	public void setUserTel(int userTel) {
		this.userTel = userTel;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public UserBean() {
		// TODO Auto-generated constructor stub
	}
	public UserBean(String userName, String sex, String createTime, String updateTime, String name, int userTel,
			String userEmail) {
		super();
		this.userName = userName;
		this.sex = sex;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.name = name;
		this.userTel = userTel;
		this.userEmail = userEmail;
	}
	@Override
	public String toString() {
		return "UserBean [userName=" + userName + ", sex=" + sex + ", createTime=" + createTime + ", updateTime="
				+ updateTime + ", name=" + name + ", userTel=" + userTel + ", userEmail=" + userEmail + "]";
	}
	
	


}
