package com.ros.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ros.entity.Message;
import com.ros.service.MessageService;
import com.ros.service_impl.MessageServiceImpl;
import com.ros.util.PageData;

/**
 * Servlet implementation class MessageServlet
 */
@WebServlet("/message.do")
public class MessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MessageService ms=new MessageServiceImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MessageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op=request.getParameter("op");//判断请求方式
		//统一设置编码格式
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		 PrintWriter out=response.getWriter();
		
		if("showMessage".equals(op)) {
			String meg="";
			//获取花束的编号
			int flowerId=Integer.parseInt(request.getParameter("flowerId"));
			//调用服务层的方法获取留言的记录
			List<Message> list=ms.getMessage(flowerId);
		
			if(list.size()>0) {
				request.getSession().setAttribute("messageList", list);
				response.sendRedirect("/Rosemary/index/productionDetail.jsp");
			}
	
			out.print(meg);
			out.close();
			
		}
		else if ("showAllMessagePage".equals(op)) {
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
			PageData<Message> pdm=ms.getAllMessageByPage(page, pageSize, keywords);
			System.out.println(pdm);
			request.getSession().setAttribute("messagePage", pdm);
			response.sendRedirect("/Rosemary/admin/message.jsp");
		}
		
		/**
		 * 删除留言
		 */
		else if("deleteMessage".equals(op)) {
			String mString="";
			//获取界面传过来的留言记录的编号
			int messageId=Integer.parseInt(request.getParameter("messageId"));
			boolean flag=ms.deleteMessage(messageId);
			if (flag) {
				mString="ok~，留言删除成功啦~(*^▽^*)";
			}
			else {
				mString="啊哦~，留言删除失败~(ಥ﹏ಥ)";
			}
			out.println(mString);
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
