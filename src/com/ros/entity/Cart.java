/**
 * 
 */
package com.ros.entity;

import java.util.Collection;
import java.util.HashMap;

/**
 * @author Administrator(小谢)
 *购物车实体类
 */
public class Cart {
  private HashMap<Integer, CartItem> map=new HashMap<Integer, CartItem>();//声明购物项容器map,键为鲜花编号，值为购物项
  private double totalPrice=0;//购物车商品的总价
  
  
  //清空购物车方法
  public void clearCart() {
	  
	  map.clear();
  }
  //移除购物项
  public void removeCartItem(int flowerId) {
	  map.remove(flowerId);
	  
  }
  //添加购物项
  //第一步，传购物项对象进来，要先进行判断，之前是否已经买过此项产品
  //如果买过，则获取传进来的购物项的数量，在原先数量上+1
  //否则，则重新插入一个新的购物项记录
  /*
   * 添加购物项方法
   */
  public void addCartItemToCart(CartItem cartItem) {
	  //先获取传进来的鲜花的编号
	  int flowerId=cartItem.getFlower().getFlowerId();
	  //进行判断之前是否买过
	  if(map.containsKey(flowerId)) {//如果买过
		  //获得之前买过的购物项
		  CartItem oldCartItem=map.get(flowerId);
		  //在原来购物项中加上你所传进来的购物项的数量
		  oldCartItem.setQuantity(oldCartItem.getQuantity()+cartItem.getQuantity());
	    
	  }
	  //如果没有买过，直接put
	  else {
		  map.put(flowerId, cartItem);
	  }
  }

//获取总计
public double getTotalPrice() {
	//先让总计清0
	totalPrice=0;
	//直接遍历map中的所有购物项
	Collection<CartItem> value= map.values();
	//遍历所有购物项
	for (CartItem cartItem : value) {
		totalPrice+=cartItem.getTotal();//总计计算
	}
	return totalPrice;//返回总计
}
//返回购物车内所有购物项
public Collection<CartItem> getCartItems(){
	return  map.values();
}

  
  
}
