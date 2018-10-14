package com.ros.entity;
/**
 * 订单基本信息的实体类
 * @author hyf
 *
 */
public class Orders {

	private int orderId;//订单编号
	private int userId;//用户编号
	private double payment;//总费用
	private double postage;//运费
	private String sendTime;//发货时间
	private String address;//收货地址
	private int orderType;//订单类型
	private int orderStatus;//订单状态
	private String createTime;//下单时间
	private String updateTime;//订单更新时间
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public double getPayment() {
		return payment;
	}
	public void setPayment(double payment) {
		this.payment = payment;
	}
	public double getPostage() {
		return postage;
	}
	public void setPostage(double postage) {
		this.postage = postage;
	}
	public String getSendTime() {
		return sendTime;
	}
	public void setSendTime(String sendTime) {
		this.sendTime = sendTime;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getOrderType() {
		return orderType;
	}
	public void setOrderType(int orderType) {
		this.orderType = orderType;
	}
	public int getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(int orderStatus) {
		this.orderStatus = orderStatus;
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
		return "Orders [orderId=" + orderId + ", userId=" + userId + ", payment=" + payment + ", postage=" + postage
				+ ", sendTime=" + sendTime + ", address=" + address + ", orderType=" + orderType + ", orderStatus="
				+ orderStatus + ", createTime=" + createTime + ", updateTime=" + updateTime + "]";
	}
	public Orders(int orderId, int userId, double payment, double postage, String sendTime, String address,
			int orderType, int orderStatus, String createTime, String updateTime) {
		super();
		this.orderId = orderId;
		this.userId = userId;
		this.payment = payment;
		this.postage = postage;
		this.sendTime = sendTime;
		this.address = address;
		this.orderType = orderType;
		this.orderStatus = orderStatus;
		this.createTime = createTime;
		this.updateTime = updateTime;
	}
	
	public Orders() {
		// TODO Auto-generated constructor stub
	}
}
