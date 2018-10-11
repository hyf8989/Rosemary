package com.ros.entity;
/**
 * 用户基本信息的实体类
 * @author hyf
 *
 */
public class UserBasicInfo {

	private int userId;
	private String userName;
	private String userPwd;
	private String createTime;
	private String updateTime;
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
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
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
		return "UserBasicInfo [userId=" + userId + ", userName=" + userName + ", userPwd=" + userPwd + ", createTime="
				+ createTime + ", updateTime=" + updateTime + "]";
	}
	public UserBasicInfo(int userId, String userName, String userPwd, String createTime, String updateTime) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPwd = userPwd;
		this.createTime = createTime;
		this.updateTime = updateTime;
	}
	
	public UserBasicInfo() {
		// TODO Auto-generated constructor stub
	}
}
