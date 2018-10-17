package com.ros.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
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
			//调用TypesService方法
			List<Types> list = ts.getTypes();
			request.getSession().setAttribute("typeList",list);
			response.sendRedirect("/Rosemary/admin/typeList.jsp");
		}else if("updType".equals(op)) {
			String meg="";
			//获取各个参数
			int typeId=Integer.parseInt(request.getParameter("typeId"));
			String typeName=request.getParameter("typeName");			
			//当前时间
			 Date date=new Date();
			 String updateTime=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
			 Types t = new Types(typeId,typeName,updateTime);
			 boolean flag = ts.updateType(t);
			 if(flag) {
					meg="修改鲜花类型成功";
				}
				else {
					meg="修改鲜花类型失败";
				}
				
				out.println(meg);
				out.close();
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
