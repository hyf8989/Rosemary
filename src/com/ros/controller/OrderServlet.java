package com.ros.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.ha.backend.CollectedInfo;

import com.google.gson.Gson;
import com.ros.entity.Cart;
import com.ros.entity.CartItem;
import com.ros.entity.OrderInfo;
import com.ros.entity.OrderInfo_Re_FlowerInfo;
import com.ros.entity.Orders;
import com.ros.service.FlowerInfoService;
import com.ros.service.MyOrdersService;
import com.ros.service_impl.FlowerInfoServiceImpl;
import com.ros.service_impl.MyOrdersServiceImpl;
import com.ros.util.PageData;

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
		 //根据传递过来的用户ID查询对应的订单（查看订单操作）
		 
		 else if(op.equals("queryOrderByUserId")) {
			 int page=1;//默认当前页1
			 int pageSize=4;//默认每页4条
			//获取传递过来的用户编号
			 int userId=Integer.valueOf(request.getParameter("userId"));
			 if(request.getParameter("page")!=null) {
				 page=Integer.valueOf(request.getParameter("page"));
			 }
			 if(request.getParameter("pageSize")!=null) {
				 pageSize=Integer.valueOf(request.getParameter("pageSize"));
			 }
			 //调用接口实现类的方法，查询出该用户的所有订单
		  PageData<Orders> pd=	 orderService.queryOrderByUserId(userId, page, pageSize);
		   //存储进session
		   request.getSession().setAttribute("orders", pd);
		   //重定向到订单页面
		   response.sendRedirect("/Rosemary/index/myOrder.jsp");
		   
		 }
		 
		 //展示所有的订单并分页、模糊查询（后台）
		 else if("showOrdersPage".equals(op)) {
			 int page =1;//默认第一页
				int pageSize = 2;//默认每页显示10条
				//如果用户传递的参数不为空
				if(request.getParameter("page")!=null)
				{
					page = Integer.parseInt(request.getParameter("page"));
				}
				
				if(request.getParameter("pageSize")!=null)
				{
					pageSize = Integer.parseInt(request.getParameter("pageSize"));
				}
				
				//增加了模糊查询的部分;
				String keywords="";
				if(request.getParameter("keywords")!=null)
				{
					keywords = request.getParameter("keywords");
				}
				PageData<Orders> pdm=orderService.getOrderByPage(page, pageSize, keywords);
				
				request.getSession().setAttribute("orders", pdm);
				response.sendRedirect("/Rosemary/admin/orderList.jsp");
		}
		 //根据订单状态查询订单信息
		 else if("orderQueryByStatus".equals(op)) {
			 String mString="暂时还没有该状态的订单";
			 //获取订单管理表界面传递过来的订单状态
			int statusVal=Integer.parseInt(request.getParameter("statusVal"));
			//调用服务层的方法
			List<Orders> list=orderService.getOrderByStatus(statusVal);
			
			//若查询到的结果集里有记录，则将结果集传到orderList.jsp界面
			if(list.size()>0) {
				Gson gson=new Gson();
				out.print(gson.toJson(list));
				
			}
			else {
				out.print(mString);
			}
			//若查询到的结果集没有记录则将mString传到orderList.jsp界面
			
			out.close();
			
		}
		 
		 else if ("updateOrder".equals(op)) {
			 String mString="";
			 //获取jsp界面传递过来的订单编号、订单状态、地址、发货时间
			int orderId=Integer.parseInt(request.getParameter("orderId"));
			int orderStatus= Integer.parseInt(request.getParameter("orderStatus"));
			
			//获取jsp界面传递过来的年月日信息
			String sendTime=request.getParameter("sendTime");
			//获取当前的时分秒时间
			Date date=new Date();
			String dateStr=new SimpleDateFormat("HH:mm:ss").format(date);
			//将获取到的时间信息拼接起来
			String sendTimeStr=sendTime+" "+dateStr;
			
			//调用服务层的方法
			boolean flag=orderService.updateOrder(orderId, orderStatus,sendTimeStr);
			//判断订单信息是否更新成功
			if(flag) {
				mString="订单信息更新成功啦~(*^▽^*)";
			}
			else {
				mString="订单信息更新失败(ಥ﹏ಥ)";
			}
			out.print(mString);
			out.close();
		}
		 //根据订单编号获取订单详细信息
		 else if("getOrderDetailInfo".equals(op)) {
			 //获取订单编号
			 int orderId=Integer.parseInt(request.getParameter("orderId"));
			 //调用服务层的方法
			 List<OrderInfo_Re_FlowerInfo> list=orderService.queryOrderDetailInfoByOrderId(orderId);
			 Gson gson=new Gson(); 
			 out.print(gson.toJson(list));
			 out.close();
		 
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
