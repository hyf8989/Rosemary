package com.ros.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.ha.backend.CollectedInfo;

import com.ros.entity.Cart;
import com.ros.entity.CartItem;
import com.ros.entity.OrderInfo;
import com.ros.entity.Orders;
import com.ros.service.FlowerInfoService;
import com.ros.service.MyOrdersService;
import com.ros.service_impl.FlowerInfoServiceImpl;
import com.ros.service_impl.MyOrdersServiceImpl;

/**
 * 订单控制器
 */
@WebServlet("/order.do")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//实例化订单服务接口实现类对象
	MyOrdersService orderService=new MyOrdersServiceImpl();  
	FlowerInfoService fis=new FlowerInfoServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String op=request.getParameter("op");//判断请求方式
		//统一设置编码格式
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		 PrintWriter out=response.getWriter();
		 //如果请求是生成订单
		 if(op.equals("createOrder")) {
			//初始化订单操作回调信息
			 String msg="";
			 //获取传过来的订单号
			 int orderId=Integer.valueOf(request.getParameter("orderId"));
			 //获取传过来订单总费用
			 int payment=Integer.valueOf(request.getParameter("payment")) ;
			 //获取传过来的运费
			 int postage=Integer.valueOf(request.getParameter("postage")) ;
			 //获取传过来的订单状态
			 int orderStatus=Integer.valueOf(request.getParameter("orderStatus"));
			 //获取传过来的操作用户ID
			 int userId=Integer.valueOf(request.getParameter("userId"));
			 //获取传过来的订单类型
			 int orderType=Integer.valueOf(request.getParameter("orderType"));
			 //获取传递过来的收货地址
			 String address=request.getParameter("address");
			 //创建时间和更新时间
			 SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			 String createTime=format.format(new Date());
			 String updateTime=format.format(new Date()); 
			 //实例化订单对象用来对数据库订单表进行插入
			 Orders orders=new Orders(orderId, userId, payment, postage, address, orderType, orderStatus, createTime, updateTime);
			 //获取购物车
			 Cart cart=(Cart)request.getSession().getAttribute("cart");
			//获得当前购物车内所有物品
			 Collection<CartItem> item=cart.getCartItems();
			 boolean flag=false;
			 for (CartItem cartItem : item) {
				//获取购物项内鲜花的编号
				 int flowerId=cartItem.getFlower().getFlowerId();
				 //获取每项产品的购买数量
				 int quantity=cartItem.getQuantity();
				 //获取购物项的小计
				 double totalPrice=cartItem.getTotal();
			  //实例化订单详情表实体类
				 OrderInfo oi=new OrderInfo(flowerId, orderId, quantity, totalPrice) ;
			  if(orderService.InsertOrderInfo(oi)) {
				  flag=true;
			  }
			}
			 if(orderService.createOrder(orders)==true && flag==true) {
				 //插入成功则根据订单ID查询订单信息，存储在session中，方便在支付界面显示信息
				 Orders orderEnd=orderService.getOrderInfoByOrderId(orderId);
				 request.getSession().setAttribute("orderEnd", orderEnd);
				 msg="成功生成订单！点击确定去支付这笔订单吧";
				 out.print(msg);
				 out.close();
				 
				 
			 }
			 else {
				 
				 msg="订单异常，请重新刷新页面试试";
				 out.print(msg);
				 out.close();
			 }
			 
			 
			 
					 
			 
			 
		 }
		 else if(op.equals("success")) {
			 //获取传递过来的订单号
			 int orderId=Integer.valueOf(request.getParameter("orderId"));
			
			//如果订单状态设置为已付款
			 boolean flag=false;
			 if(orderService.setOrderStatus(orderId)) {
				//还要对已购买的商品的数量扣除
				 
				 //记得清空购物车
				Cart cart=(Cart) request.getSession().getAttribute("cart"); 
				//获取所有购物项
				Collection<CartItem> item=cart.getCartItems();
				 //实例化鲜花DAo业务实现类
				
				
				for (CartItem cartItem : item) {
				int	flowerId=cartItem.getFlower().getFlowerId();
				int  shopQuantity=cartItem.getQuantity();//得到每一项的购买数量
				int	stock=fis.getFlowerInfoById(flowerId).getStock();//获得鲜花库存
				int newStock=stock-shopQuantity;//新的库存量
				if(fis.setFlowerStockByFlowerId(flowerId, newStock)) {
					flag=true;
				}
					
				
					
				}
				
				if(flag==true) {
					
					cart.clearCart();//如果商品库存已经成功修改，则清空购物车
					
				}
				
				
			response.sendRedirect("/Rosemary/index/cart.jsp");	
				
			}
		 }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}