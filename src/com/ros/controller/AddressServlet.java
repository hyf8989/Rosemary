package com.ros.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ros.entity.Address;
import com.ros.service.AddressService;
import com.ros.service_impl.AddressServiceImpl;

/**
 * Servlet implementation class AddressServlet
 */
@WebServlet("/address.do")
public class AddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       AddressService as=new AddressServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddressServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//设置编码格式
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String op=request.getParameter("op");
		PrintWriter out=response.getWriter();
		
		//展示用户收货地址
		if(op.equals("myAddress")) {
			
			//获取用户登录的用户名
			String userName=request.getParameter("userName");
			
			//调用接口实现类对象的查询用户收货地址的方法
			List<Address> list=as.getAddressByuserName(userName);
			
			request.getSession().setAttribute("addressList", list);
			response.sendRedirect("/Rosemary/index/myAddress.jsp");
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
