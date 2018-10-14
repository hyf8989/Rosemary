package com.ros.entity;
/**
 * 自定义购物车类
 * @author hyf
 * 
 */
public class Cart {

	private int Id;//购物车记录编号
	private int userId;//用户编号
	private int flowerId;//鲜花编号
	private int quantity;//数量
	private String createTime;//购物车记录创建时间
	private String updateTime;//购物车记录更新时间
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
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
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
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
		return "Cart [Id=" + Id + ", userId=" + userId + ", flowerId=" + flowerId + ", quantity=" + quantity
				+ ", createTime=" + createTime + ", updateTime=" + updateTime + "]";
	}
	public Cart(int id, int userId, int flowerId, int quantity, String createTime, String updateTime) {
		super();
		Id = id;
		this.userId = userId;
		this.flowerId = flowerId;
		this.quantity = quantity;
		this.createTime = createTime;
		this.updateTime = updateTime;
	}
	
	public Cart() {
		// TODO Auto-generated constructor stub
	}
	
}
