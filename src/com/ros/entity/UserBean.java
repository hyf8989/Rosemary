package com.ros.entity;

/**
 * 用户信息展示的实体类
 * @author Administrator
 *
 */
public class UserBean {
	private int userId;
	private String userName;
	private String createTime;
	private String updateTime;
	private String name;
	private String userTel;
	private String userEmail;
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
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
	public String getUserTel() {
		return userTel;
	}
	public void setUserTel(String userTel) {
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
	
	public UserBean(int userId, String userName, String createTime, String updateTime, String name, String userTel,
			String userEmail) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.name = name;
		this.userTel = userTel;
		this.userEmail = userEmail;
	}
	@Override
	public String toString() {
		return "UserBean [userId=" + userId + ", userName=" + userName + ", createTime=" + createTime + ", updateTime="
				+ updateTime + ", name=" + name + ", userTel=" + userTel + ", userEmail=" + userEmail + "]";
	}
	
	
	


}
