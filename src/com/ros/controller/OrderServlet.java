package com.ros.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ros.entity.Orders;
import com.ros.service.MyOrdersService;
import com.ros.service_impl.MyOrdersServiceImpl;

/**
 * 订单控制器
 */
@WebServlet("/order.do")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//实例化订单服务接口实现类对象
	MyOrdersService orderService=new MyOrdersServiceImpl();  
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
			 
			 if(orderService.createOrder(orders)==true) {
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
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
