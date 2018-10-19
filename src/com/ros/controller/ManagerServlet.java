package com.ros.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.ros.entity.Manager;
import com.ros.service.ManagerService;
import com.ros.service_impl.ManagerServiceImpl;
import com.ros.util.MD5Util;
import com.ros.util.PageData;

/**
 * Servlet implementation class ManagerServlet
 */
@WebServlet("/manager.action")
public class ManagerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ManagerService ms = new ManagerServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ManagerServlet() {
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
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		// 设置请求编码
		request.setCharacterEncoding("utf-8");
		// 设置页面的格式(预期响应的contentType)
		response.setContentType("text/html;charset=utf-8");
		// 通过response的方法得到一个jspwriter
		//PrintWriter out = response.getWriter();
		// 获取op
		String op = request.getParameter("op");
		if ("login".equals(op)) {
			// 调用验证登录的方法
			doLogin(request, response);
		} else if ("adminAdd".equals(op)) {
			// 调用添加管理员的方法
			doAddManager(request, response);
		} else if ("checkAdminName".equals(op)) {
			// 调用根据用户名查询管理员的方法
			doQueryManager(request, response);
		} else if ("adminDel".equals(op)) {
			// 调用删除管理员的方法
			doDelManager(request, response);
			
		} else if ("queryManager".equals(op)) {//显示所有管理员
			/*List<Manager> list = ms.queryManager();
			request.setAttribute("list", list);*/
			int page =1;//默认第一页
			int pageSize = 2;//默认每页显示10条
			//如果用户传递的参数不为空
			if(request.getParameter("page")!=null)
			{
				page = Integer.parseInt(request.getParameter("page"));
			}
			
			if(request.getParameter("pageSize")!=null)
			{
				pageSize = Integer.parseInt(request.getParameter("pageSize"));
			}
			
			//增加了模糊查询的部分;
			String keywords="";
			if(request.getParameter("keywords")!=null)
			{
				keywords = request.getParameter("keywords");
			}
			PageData<Manager> pdm = ms.queryManagerByPage(page, pageSize, keywords);
			//request.setAttribute("pd", pd);
			//需要将每次模糊查询的关键字传递回来给jsp
			//request.setAttribute("keywords", keywords);
			request.getSession().setAttribute("pdm", pdm);
			request.getSession().setAttribute("keywords", keywords);
			//request.getRequestDispatcher("/admin/adminList.jsp").forward(request, response);
			response.sendRedirect("/Rosemary/admin/adminList.jsp");
		}else if("updateManagerPwd".equals(op)) {
			PrintWriter out = response.getWriter();
			String adminName = request.getParameter("adminName");
			boolean flag = ms.updateManagerPwd(adminName);
			if(flag) {
				out.print("重置成功");
			}else {
				out.print("重置失败");
			}
			out.close();
			//request.getRequestDispatcher("/admin/adminList.jsp").forward(request, response);
		}else if("lockManagerStatus".equals(op)) {
			PrintWriter out = response.getWriter();
			String adminName = request.getParameter("adminName");
			boolean flag = ms.lockManagerStatus(adminName);
			if(flag) {
				out.print("锁定");
			}else {
				out.print("锁定失败");
			}
			out.close();
		}else if("clearManagerStatus".equals(op)) {
			PrintWriter out = response.getWriter();
			String adminName = request.getParameter("adminName");
			boolean flag = ms.clearManagerStatus(adminName);
			if(flag) {
				out.print("解锁");
			}else {
				out.print("解锁失败");
			}
			out.close();
		}
	}

	protected void doLogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 通过response的方法得到一个jspwriter
		PrintWriter out = response.getWriter();
		// 用户登录
		// 先获取管理员账号和密码
		String adminName = request.getParameter("adminName");
		String adminPwd = request.getParameter("adminPwd");

		Manager m = ms.login(adminName, adminPwd);
		if (m == null) {
			// 用户名或者密码错误
			out.print("<script>alert('登录失败');location.href='/Rosemary/admin/login.jsp'</script>");
		} else {
			// 1 登录成功，需要将用户登录的信息存储在session中.
			// HttpSession session=request.getSession();
			request.getSession().setAttribute("m", m);
			// 将用户登录的信息存储在cookie
			/*Cookie cookie = new Cookie("adminName", m.getAdminName());
			Cookie cookie1 = new Cookie("adminPwd", adminPwd);
			// 使用response.addCookie
			response.addCookie(cookie);
			response.addCookie(cookie1);*/
			out.print("<script>alert('登录成功');location.href='/Rosemary/admin/index.jsp'</script>");

		}
		out.close();
	}

	protected void doAddManager(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		String msg="";
		String adminName = request.getParameter("adminName");
		String adminPwd = MD5Util.getEncodeByMd5(request.getParameter("adminPwd"));
		String adminStatus = request.getParameter("adminStatus");
		String adminLevel = request.getParameter("adminLevel");
		/*System.out.println(adminName);
		System.out.println(adminPwd);
		System.out.println(adminStatus);
		System.out.println(adminLevel);*/
		Manager m = new Manager(adminName, adminPwd, Integer.parseInt(adminStatus), Integer.parseInt(adminLevel));
		
		boolean flag = ms.addManager(m);
		if (flag) {
			msg="添加成功";
			//out.print("<script>alert('添加成功');location.href='/Rosemary/admin/adminList.jsp'</script>");
		} else {
			msg="添加失败";
			//out.print("<script>alert('添加失败');location.href='/Rosemary/admin/adminAdd.jsp'</script>");
		}
		out.print(msg);
		out.close();
	}

	protected void doQueryManager(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String adminName=request.getParameter("adminName");
		if(ms.queryManager(adminName)==null) {
			out.print("管理员账号合法");
			out.close();
		}
		else {
			out.print("该管理员已经存在");
			out.close();
			
		}
		
	}

	protected void doDelManager(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//PrintWriter out = response.getWriter();
		/*
		 * String adminName = request.getParameter("adminName"); String adminPwd =
		 * request.getParameter("adminPwd"); String adminStatus =
		 * request.getParameter("adminStatus"); String adminLevel =
		 * request.getParameter("adminLevel"); Manager m = new Manager(adminName,
		 * adminPwd, Integer.parseInt(adminStatus), Integer.parseInt(adminLevel));
		 * boolean flag = ms.addManager(m); if (flag) { out.print(
		 * "<script>alert('添加成功');location.href='/Rosemary/admin/adminList.jsp'</script>"
		 * ); }else { out.print(
		 * "<script>alert('添加失败');location.href='/Rosemary/admin/adminAdd.jsp'</script>"
		 * ); }
		 */
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
