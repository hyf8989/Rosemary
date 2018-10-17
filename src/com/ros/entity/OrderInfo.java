        /** 
	 * Project Name:Rosemary 
	 * File Name:OrderInfo.java 
	 * Package Name:com.ros.entity 
	 * Date:2018年10月17日下午8:03:21 
	 * Copyright (c) 2018, ***@126.com All Rights Reserved. 
	 * 
	 */

package com.ros.entity;

        /** 
	 * ClassName: OrderInfo <br/> 
	 *  类的作用：订单详情表的实体类<br/> 
	 *   
	 *   
	 * 
	 * @author 小谢
	 * @version  
	 * @since JDK 1.8
	 */

public class OrderInfo {
    private int orderInfoId;//订单明细表编号
    private int  flowerId;//鲜花编号
    private int orderId;//对应订单表的编号
    private int quantity;//购买产品的对应数量
    private double totalPrice;//购物项小计
	public int getOrderInfoId() {
		return orderInfoId;
	}
	public void setOrderInfoId(int orderInfoId) {
		this.orderInfoId = orderInfoId;
	}
	public int getFlowerId() {
		return flowerId;
	}
	public void setFlowerId(int flowerId) {
		this.flowerId = flowerId;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
    
    
}
