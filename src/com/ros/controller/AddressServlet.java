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
		
		//用户添加收货地址
		else if(op.equals("addAddress")) {
			String mag="";
			//获取用户编号
			int userId=Integer.parseInt(request.getParameter("userId"));
			
			//获取输入的收货人姓名
			String receiverName=request.getParameter("receiverName");
			//获取输入的收货人电话
			String receiverPhone=request.getParameter("receiverPhone");
			//获取输入的省市区及详细地址
			String receiverProvince=request.getParameter("receiverProv");
			String receiverCity=request.getParameter("receiverCity");
			String receiverDistrict=request.getParameter("receiverDistrict");
			String addressInfo=request.getParameter("addressInfo");
			
			//获取输入的邮编
			int receiverZip=Integer.parseInt(request.getParameter("receiverZip"));
			
			//获取当前时间并转换时间格式
			 Date date=new Date();
				
		   String dateStr=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
			Address address=new Address(userId, receiverProvince, receiverCity, receiverDistrict, receiverName, receiverPhone, addressInfo, receiverZip, dateStr, dateStr);
			
			boolean flag=as.addAddress(address);
			
			if(flag) {
				mag="收货地址添加成功";
			}
			else {
				mag="收货地址添加失败";
			}
			
			out.println(mag);
			out.close();
		}
		
		else if(op.equals("deleteAddress")) {
			String mag="";
			//获取地址信息的编号
			int addressId=Integer.parseInt( request.getParameter("addressId"));
		    boolean flag=as.deleteAddress(addressId);
		    if(flag) {
		    	mag="收货地址删除成功";
		    }
		    else {
				mag="收货地址删除失败";
			}
		    out.print(mag);
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
