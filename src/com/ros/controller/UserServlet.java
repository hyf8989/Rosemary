package com.ros.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.ros.api.*;
import com.ros.entity.UserBasicInfo;
import com.ros.entity.UserBean;
import com.ros.entity.UserDetailInfo;
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
		
		//用户登录
		else if(op.equals("login")) {
			String userName=request.getParameter("userName");
			String userPwd=MD5Util.getEncodeByMd5(request.getParameter("userPwd"));
			UserBasicInfo ub=us.login(userName, userPwd);
			if(ub!=null) {
				HttpSession session =request.getSession();
				session.setAttribute("ub", ub);
				out.print("登录成功");
				out.close();
			}
			else {
				out.print("登录失败，用户名或者密码输入错误");
				out.close();
			}
		}
		//插入用户基本表（用户注册功能）
		else if(op.equals("insert")) {
			String msg="";
			String userName=request.getParameter("userName");
			String userPwd=MD5Util.getEncodeByMd5(request.getParameter("userPwd"));//密码加密
			
			String createTime=request.getParameter("createTime");
			String updateTime=createTime;
			String phoneNumber=request.getParameter("phoneNumber");//得到传过来的用户联系方式
			UserBasicInfo ub=new UserBasicInfo(userName, userPwd, createTime, updateTime);
			
			boolean flag=us.insertUser(ub);//插入用户基本表
			
			
			if(flag==true) {
				int userId=us.getUserBasicInfoByUserName(userName).getUserId();//获得刚注册的用户ID
				UserDetailInfo uDI=new UserDetailInfo(userId, phoneNumber, createTime, updateTime);
				if(us.insertUserDetail(uDI)) {
					msg="注册成功";
				}
				
			}
			else {
				msg="注册失败";
			}
			out.print(msg);
			out.close();
			
			
		}
		
		/**
		 * 用户输入的旧密码的验证
		 */
		else if(op.equals("verifyPwd")) {
			String messge="";
			
			//获取用户输入的旧密码
			String userPwdInput=MD5Util.getEncodeByMd5(request.getParameter("userPwdInput"));
	     
	     
			//获取用户的初始密码
			String userPwd=request.getParameter("userPwd");
			
			
			if(userPwd.equals(userPwdInput)) {
				messge="与原密码一致" ;
			}
			else{
				messge="与原密码不一致" ;
			}
			out.print(messge);
			out.close();
			
		}
		
		/**
		 * 用户修改密码
		 */
		else if(op.equals("updatePwd")) {
			String messge="";
			//获取用户名
			String userName=request.getParameter("userName");
	
            //获取当前时间
			Date date=new Date();
			
			String dateStr=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
	
			boolean flag=us.updatePwd(userName,dateStr, request.getParameter("userPwd"));
			

			if(flag) {
				messge="密码修改成功";
			}
			else {
				messge="密码修改失败";
			}
			
			out.print(messge);
			out.close();
	
		
		}else if(op.equals("queryUsersBean")) {
			List<UserBean> list = us.queryUsersBean();
			request.setAttribute("list", list);
			request.getRequestDispatcher("/admin/userList.jsp").forward(request, response);
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
