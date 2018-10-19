/**
 * 
 */
package com.ros.entity;

/**
 * @author xiaoxie
 *  订单详情表与鲜花表的关联实体类
 */
public class OrderInfo_Re_FlowerInfo {
	  private String flowerName;//鲜花名
	  private double price;//鲜花单价
	  private String sPicture;//鲜花小图
	  private int  orderId;//所属订单编号
	  private String quantity;//对应订单项的购买数量
	  
	  private double totalPrice;//订单项的小计
	  private String sendTime;//订单的发货时间
	public String getSendTime() {
		return sendTime;
	}
	public void setSendTime(String sendTime) {
		this.sendTime = sendTime;
	}
	public String getFlowerName() {
		return flowerName;
	}
	public void setFlowerName(String flowerName) {
		this.flowerName = flowerName;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getsPicture() {
		return sPicture;
	}
	public void setsPicture(String sPicture) {
		this.sPicture = sPicture;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	public OrderInfo_Re_FlowerInfo(String flowerName, double price, String sPicture, int orderId, String quantity,
			double totalPrice, String sendTime) {
		super();
		this.flowerName = flowerName;
		this.price = price;
		this.sPicture = sPicture;
		this.orderId = orderId;
		this.quantity = quantity;
		this.totalPrice = totalPrice;
		this.sendTime = sendTime;
	}
	@Override
	public String toString() {
		return "OrderInfo_Re_FlowerInfo [flowerName=" + flowerName + ", price=" + price + ", sPicture=" + sPicture
				+ ", orderId=" + orderId + ", quantity=" + quantity + ", totalPrice=" + totalPrice + ", sendTime="
				+ sendTime + "]";
	}
	public OrderInfo_Re_FlowerInfo(String flowerName, double price, String sPicture, int orderId, String quantity,
			double totalPrice) {
		super();
		this.flowerName = flowerName;
		this.price = price;
		this.sPicture = sPicture;
		this.orderId = orderId;
		this.quantity = quantity;
		this.totalPrice = totalPrice;
	}
	  
	  public OrderInfo_Re_FlowerInfo() {
		// TODO Auto-generated constructor stub
	}

}
