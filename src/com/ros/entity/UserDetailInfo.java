package com.ros.entity;
/**
 * 用户详情信息实体类
 * @author Administrator
 *
 */
public class UserDetailInfo {

	private int id;
	private int userId;
	private String name;
	private String userTel;
	private String userEmail;
	private String createTime;
	private String updateTime;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
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
	@Override
	public String toString() {
		return "UserDetailInfo [Id=" + id + ", userId=" + userId + ", name=" + name + ", userTel=" + userTel
				+ ", userEmail=" + userEmail + ", createTime=" + createTime + ", updateTime=" + updateTime + "]";
	}
	public UserDetailInfo(int id, int userId, String name, String userTel, String userEmail, String createTime,
			String updateTime) {
		super();
		id = id;
		this.userId = userId;
		this.name = name;
		this.userTel = userTel;
		this.userEmail = userEmail;
		this.createTime = createTime;
		this.updateTime = updateTime;
	}
	
	public UserDetailInfo() {
		// TODO Auto-generated constructor stub
	}
	public UserDetailInfo(int id, int userId, String userTel, String createTime, String updateTime) {
		super();
		id = id;
		this.userId = userId;
		this.userTel = userTel;
		this.createTime = createTime;
		this.updateTime = updateTime;
	}
	public UserDetailInfo(int userId, String userTel, String createTime, String updateTime) {
		super();
		this.userId = userId;
		this.userTel = userTel;
		this.createTime = createTime;
		this.updateTime = updateTime;
	}
	public UserDetailInfo(String name, String userTel, String userEmail, int userId) {
		// TODO Auto-generated constructor stub
		super();
		this.name = name;
		this.userTel = userTel;
		this.userEmail = userEmail;
		this.userId = userId;
	}
	
	
	
}
