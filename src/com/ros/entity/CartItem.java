/**
 * 
 */
package com.ros.entity;

/**
 * @author Administrator(小谢)
 *购物项的实体类
 */
public class CartItem {
   private FlowerInfo flower;//声明私有属性鲜花类
   private int quantity;//声明数量
   private double total=0;//声明价格小计
public FlowerInfo getFlower() {
	return flower;
}
public void setFlower(FlowerInfo flower) {
	this.flower = flower;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public double getTotal() {
	total=0;
	return flower.getPrice()*quantity;
}

@Override
public String toString() {
	return "CartItem [flower=" + flower + ", quantity=" + quantity + ", total=" + total + "]";
}
public CartItem(FlowerInfo flower, int quantity, double total) {
	super();
	this.flower = flower;
	this.quantity = quantity;
	this.total = total;
}
   /**   
 * 
 */
public CartItem() {
	// TODO Auto-generated constructor stub
}

}
