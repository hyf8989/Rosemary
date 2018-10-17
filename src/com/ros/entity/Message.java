package com.ros.entity;
/**
 * 留言的实体类
 * @author 黄有芳
 *
 */
public class Message {

	private int messageId;
	private String content;
	private String userName;
	private int flowerId;
	private String flowerName;
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
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getFlowerName() {
		return flowerName;
	}
	public void setFlowerName(String flowerName) {
		this.flowerName = flowerName;
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
	
	
	public Message(int messageId, String content, String userName, int flowerId, String flowerName,
			String publishTime) {
		super();
		this.messageId = messageId;
		this.content = content;
		this.userName = userName;
		this.flowerId = flowerId;
		this.flowerName = flowerName;
		this.publishTime = publishTime;
	}
	@Override
	public String toString() {
		return "Message [messageId=" + messageId + ", content=" + content + ", userName=" + userName + ", flowerId="
				+ flowerId + ", flowerName=" + flowerName + ", publishTime=" + publishTime + "]";
	}
	public Message() {
		// TODO Auto-generated constructor stub
	}
}
