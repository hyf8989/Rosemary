package com.ros.entity;
/**
 * 留言的实体类
 * @author 黄有芳
 *
 */
public class Message {

	private int messageId;
	private String content;
	private int userId;
	private int flowerId;
	private String publishTime;
	public int getMessageId() {
		return messageId;
	}
	public void setMessageId(int messageId) {
		this.messageId = messageId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getFlowerId() {
		return flowerId;
	}
	public void setFlowerId(int flowerId) {
		this.flowerId = flowerId;
	}
	public String getPublishTime() {
		return publishTime;
	}
	public void setPublishTime(String publishTime) {
		this.publishTime = publishTime;
	}
	@Override
	public String toString() {
		return "Message [messageId=" + messageId + ", content=" + content + ", userId=" + userId + ", flowerId="
				+ flowerId + ", publishTime=" + publishTime + "]";
	}
	public Message(int messageId, String content, int userId, int flowerId, String publishTime) {
		super();
		this.messageId = messageId;
		this.content = content;
		this.userId = userId;
		this.flowerId = flowerId;
		this.publishTime = publishTime;
	}
	
	public Message() {
		// TODO Auto-generated constructor stub
	}
}
