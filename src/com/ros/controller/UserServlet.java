package com.ros.controller;

import java.io.IOException;
import java.io.PrintWriter;

import com.ros.api.*;
import com.ros.entity.UserBasicInfo;
import com.ros.service.UserService;
import com.ros.service_impl.UserServiceImpl;
import com.ros.util.MD5Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UserInfo_Servlet
 */
@WebServlet("/user.action")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserService us=new UserServiceImpl();
	
        
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
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

		if(op.equals("sendCode")) {
			String phoneNumber=request.getParameter("phoneNumber");
			MessageSend ms=new MessageSend();
			StringBuilder code= ms.sendCode(phoneNumber);
			HttpSession session=request.getSession();
			session.setAttribute("code", code);
			
			System.out.println("doGet : code : sendCode :"+code);
			out.print(code);
			out.close();
		
			
			
			
		}
		//用户输完用户名离开焦点时对数据库的查询判断是否用户是否存在
		else if (op.equals("register")) {
			String userName=request.getParameter("userName");
			
			if(us.register(userName)==true) {
				out.print("此用户名可用");
				out.close();
			}
			else {
				out.print("已经存在此用户！");
				out.close();
				
			}
			
			
		} 
		
		else if(op.equals("login")) {
			String userName=request.getParameter("userName");
			String userPwd=MD5Util.getEncodeByMd5(request.getParameter("userPwd"));
			UserBasicInfo ub=us.login(userName, userPwd);
			if(ub!=null) {
				HttpSession session =request.getSession();
				session.setAttribute("ub", ub);
				out.print("<script>alert('登录成功');location.href='index/index.jsp'</script>");
			}
			else {
				out.print("<script>alert('登录失败');location.href='index/login.jsp'</script>");
				
			}
		}
		//插入用户基本表（用户注册功能）
		else if(op.equals("insert")) {
			String msg="";
			String userName=request.getParameter("userName");
			String userPwd=MD5Util.getEncodeByMd5(request.getParameter("userPwd"));//密码加密
			
			String createTime=request.getParameter("createTime");
			String updateTime=createTime;
			UserBasicInfo ub=new UserBasicInfo(userName, userPwd, createTime, updateTime);
			boolean flag=us.insertUser(ub);
			if(flag==true) {
				msg="插入成功";
			}
			else {
				msg="插入失败";
			}
			out.print(msg);
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
