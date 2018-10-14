package com.ros.entity;
/**
 * 评论的实体类
 * @author hyf
 *
 */
public class Comment {

	private int commentId;//评论记录编号
	private String content;//评论的内容
	private int messageId;//留言记录的编号
	private int criticsId;//评论者编号（用户编号）
	private String commentTime;//评论时间
	public int getCommentId() {
		return commentId;
	}
	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getMessageId() {
		return messageId;
	}
	public void setMessageId(int messageId) {
		this.messageId = messageId;
	}
	public int getCriticsId() {
		return criticsId;
	}
	public void setCriticsId(int criticsId) {
		this.criticsId = criticsId;
	}
	public String getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(String commentTime) {
		this.commentTime = commentTime;
	}
	@Override
	public String toString() {
		return "Comment [commentId=" + commentId + ", content=" + content + ", messageId=" + messageId + ", criticsId="
				+ criticsId + ", commentTime=" + commentTime + "]";
	}
	public Comment(int commentId, String content, int messageId, int criticsId, String commentTime) {
		super();
		this.commentId = commentId;
		this.content = content;
		this.messageId = messageId;
		this.criticsId = criticsId;
		this.commentTime = commentTime;
	}
	
	public Comment() {
		// TODO Auto-generated constructor stub
	}
}
