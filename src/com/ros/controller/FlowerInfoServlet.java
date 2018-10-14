package com.ros.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ros.entity.FlowerInfo;
import com.ros.service.FlowerInfoService;
import com.ros.service_impl.FlowerInfoServiceImpl;

/**
 *   鲜花业务控制器
 */
@WebServlet("/flower.do")
public class FlowerInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	FlowerInfoService fIS=new FlowerInfoServiceImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FlowerInfoServlet() {
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
		 //最新鲜花
		 if(op.equals("getFlowerInfoByLimit")) {
			 ArrayList<FlowerInfo> list=fIS.getFlowerInfoByLimit();
			  request.getSession().setAttribute("list", list);
			 response.sendRedirect("/Rosemary/index/index.jsp");
			
		 }
		 //顶级鲜花
		 else if(op.equals("getFlowerInfoByPrice")) {
			 ArrayList<FlowerInfo> list=fIS.getFlowerInfoByPrice();
			  request.getSession().setAttribute("list2", list);
			 response.sendRedirect("/Rosemary/index/index.jsp");
			 
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
