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

import com.ros.entity.UserBasicInfo;
import com.ros.entity.UserBean;
import com.ros.entity.UserDetailInfo;
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
   	 * Get请求
   	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
   	 * @param request
   	 *  @param response
   	 */
   	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//设置请求编码
		request.setCharacterEncoding("utf-8");
		//设置页面响应格式
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		//获取参数
		String op = request.getParameter("op");
		if("queryUserBean".equals(op)) {
			//获取当前用户id
			int userId = Integer.parseInt(request.getParameter("userId"));
			//调用service查询的方法
			List<UserBean> list = ubs.getUsersBean(userId);
			request.getSession().setAttribute("ubList",list);
			response.sendRedirect("/Rosemary/index/personal.jsp");
		}else if("updateInfo".equals(op)) {
			//获取当前用户id
			int userId = Integer.parseInt(request.getParameter("userId"));
			String name = request.getParameter("name");
			String userTel = request.getParameter("userTel");
			String userEmail = request.getParameter("userEmail");
			//获取当前时间
			Date date=new Date();			
			String updateTime=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
		    UserDetailInfo udi=new UserDetailInfo(name, userTel, userEmail, userId);
			
			String msg = "";
			boolean flag=false;
			 flag=ubs.updateUserDetailInfo(udi);
			 if(flag==true) {
				 msg="修改成功";
			 }
			 else {
				 msg="修改失败";
			 }
		    out.print(msg);
		    out.close();						
		}
	}

    /**
   	 * Post请求
   	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
   	 * @param request
   	 *  @param response
   	 */
   	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
