package com.ros.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ros.entity.Types;
import com.ros.service.TypesService;
import com.ros.service_impl.TypesServiceImpl;

/**
 * Servlet implementation class TypesServlet
 */
@WebServlet("/type.do")
public class TypesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TypesService ts = new TypesServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TypesServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 设置请求编码
		request.setCharacterEncoding("utf-8");
		// 设置页面响应格式
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		//建立PrintWriter
		PrintWriter out = response.getWriter();
		// 获取参数
		String op = request.getParameter("op");
		if("queryTypes".equals(op)) {
			//获取编号
			int typeId = Integer.parseInt(request.getParameter("typeId"));
			//调用TypesService方法
			List<Types> list = ts.getTypes(typeId);
			request.getSession().setAttribute("typeList",list);
			response.sendRedirect("/Rosemary/admin/typeList.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
