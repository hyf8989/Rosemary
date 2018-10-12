package com.ros.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ros.entity.UserBean;
import com.ros.service.UserBeanService;
import com.ros.service_impl.UserBeanServiceImpl;

/**
 * Servlet implementation class UserBeanServlet
 */
@WebServlet("/ub.do")
public class UserBeanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserBeanService ubs = new UserBeanServiceImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserBeanServlet() {
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
		//设置页面响应格式
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		//获取参数
		String op = request.getParameter("op");
		if("queryUserBean".equals(op)) {
			//调用service查询的方法
			List<UserBean> list = ubs.getUsers("userName");
			request.setAttribute("list", list);
			request.getRequestDispatcher("personal.jsp").forward(request, response);			
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
