package com.ros.entity;
/**
 * 自定义MyOrders
 * 用于显示当前用户的所有订单及详情
 * @author Administrator
 *
 */
public class MyOrders {
	private int orderId;//订单编号
	private int userId;//用户编号
	private double payment;//实际付款
	private double postage;//运费
	private String sendTime;//发货时间
	private int orderStatus;//订单状态
	private String createTime;//下单时间
	private String flowerName;//商品名
	private String price;//单价
	private String description;//描述
	private String sPicture;//花图片
	private String quantity;//数量
	private String totalPrice;//总价格
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
	public String getFlowerName() {
		return flowerName;
	}
	public void setFlowerName(String flowerName) {
		this.flowerName = flowerName;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getsPicture() {
		return sPicture;
	}
	public void setsPicture(String sPicture) {
		this.sPicture = sPicture;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	public MyOrders() {
		// TODO Auto-generated constructor stub
	}
	public MyOrders(int orderId, int userId, double payment, double postage, String sendTime, int orderStatus,
			String createTime, String flowerName, String price, String description, String sPicture, String quantity,
			String totalPrice) {
		super();
		this.orderId = orderId;
		this.userId = userId;
		this.payment = payment;
		this.postage = postage;
		this.sendTime = sendTime;
		this.orderStatus = orderStatus;
		this.createTime = createTime;
		this.flowerName = flowerName;
		this.price = price;
		this.description = description;
		this.sPicture = sPicture;
		this.quantity = quantity;
		this.totalPrice = totalPrice;
	}
	@Override
	public String toString() {
		return "MyOrders [orderId=" + orderId + ", userId=" + userId + ", payment=" + payment + ", postage=" + postage
				+ ", sendTime=" + sendTime + ", orderStatus=" + orderStatus + ", createTime=" + createTime
				+ ", flowerName=" + flowerName + ", price=" + price + ", description=" + description + ", sPicture="
				+ sPicture + ", quantity=" + quantity + ", totalPrice=" + totalPrice + "]";
	}
	
	

}
