/**
 * 
 */
package com.ros.test;

import java.util.ArrayList;

import com.ros.dao_impl.MyOrdersDaoImpl;
import com.ros.entity.Orders;
import com.ros.service.MyOrdersService;
import com.ros.service_impl.MyOrdersServiceImpl;
import com.ros.util.PageData;

/**
 * @author Administrator
 *
 */
public class OrderTest {
  
   public static void main(String[] args) {
	   MyOrdersService mos=new MyOrdersServiceImpl();
	  PageData<Orders> list=mos.queryOrderByUserId(5,1,4);
	  ArrayList<Orders> list2=(ArrayList<Orders>) list.getData();
	  for (Orders orders : list2) {
		System.out.println(orders.getPayment());
	}
}
}
