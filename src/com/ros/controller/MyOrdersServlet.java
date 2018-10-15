package com.ros.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ros.entity.MyOrders;
import com.ros.service.MyOrdersService;
import com.ros.service_impl.MyOrdersServiceImpl;

/**
 * Servlet implementation class MyOrdersServlet
 */
@WebServlet("/MyOrders.do")
public class MyOrdersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MyOrdersService mos = new MyOrdersServiceImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyOrdersServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//设置请求编码
		request.setCharacterEncoding("utf-8");
		//设置响应编码
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		//获取参数
		String op = request.getParameter("op");
		if("queryMyOrders".equals(op)) {
			//调用MyOrdersService的方法
			int userId = Integer.parseInt(request.getParameter("userId"));
			List<MyOrders> list = mos.getMyOrdersByUserId(userId);
			request.getSession().setAttribute("MyOrdersList", list);
			response.sendRedirect("/Rosemary/index/myOrder.jsp");
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
