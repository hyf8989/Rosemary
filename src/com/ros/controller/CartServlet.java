package com.ros.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.ros.entity.Cart;
import com.ros.entity.CartItem;
import com.ros.entity.FlowerInfo;
import com.ros.service.FlowerInfoService;
import com.ros.service_impl.FlowerInfoServiceImpl;

/**
 * 购物车服务层
 */
@WebServlet("/cart.do")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	FlowerInfoService fIS=new FlowerInfoServiceImpl();//实例化鲜花业务层对象
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartServlet() {
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
         //在商品详情页面点击加入购物车时的操作
         if(op.equals("addToCart")) {
			
			 Cart cart=(Cart) request.getSession().getAttribute("cart");
			 //判断是否有购物车，如果没有，自行创建
			 if(cart == null) {
				cart=new Cart(); 
				//记得要存放进session里
				 request.getSession().setAttribute("cart", cart);
			 }
			 
			 //获取传过来的鲜花编号
        	 int flowerId=Integer.valueOf(request.getParameter("flowerId"));
        	 //获取传过来的购买数量
        	 int quantity=1;
        	 if(request.getParameter("quantity")!=null) {
        		 quantity=Integer.valueOf(request.getParameter("quantity")) ;
        	 }
			 //通过ID查找到鲜花信息，实例化鲜花对象
        	 FlowerInfo flower=fIS.getFlowerInfoById(flowerId);
			 //创建购物项对象
        	 CartItem cartItem=new CartItem();
        	 //存放鲜花对象
        	 cartItem.setFlower(flower);
        	 //存放购物项数量
        	  cartItem.setQuantity(quantity);
        	  //调用购物车上的方法
        	  cart.addCartItemToCart(cartItem);
        	
        	  
        	  
        	 
        	  out.print("成功加入购物车！");
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
