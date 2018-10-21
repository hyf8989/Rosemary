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
	 * Get请求
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 * @param request
	 *  @param response
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String op=request.getParameter("op");//判断请求方式
		//统一设置编码格式
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		 PrintWriter out=response.getWriter();
         //在商品详情页面点击加入购物车时的操作
         if("addToCart".equals(op)) {
			
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
         //移除购物项操作
         else if("removeCartItem".equals(op)) {
        	 //获取传递过来的购物项的鲜花编号
        	int flowerId=Integer.valueOf(request.getParameter("flowerId"));
        	//实例化购物车对象（session）
        	 Cart cart=(Cart) request.getSession().getAttribute("cart");
        	 //移除购物项操作
        	 cart.removeCartItem(flowerId);
        	  out.print("好东西还很多，客官好好逛逛");
        	  out.close();
        	 
        	 
         }
         //增加减少购物项数量的操作
         else if("updateQuantity".equals(op)) {
        	 //获得用户传进来的购物项的数量
        	 
        	int newQuantity=Integer.valueOf(request.getParameter("newQuantity"));
        	//获得用户需要进行加减数量的鲜花编号
        	int flowerId=Integer.valueOf(request.getParameter("flowerId"));
        	//先取得当前购物车对象
        	Cart cart =(Cart) request.getSession().getAttribute("cart");
        	//先取出所有的购物项，方便进行判断
        	Collection<CartItem> item=cart.getCartItems();
        	boolean flag=false;
        	//遍历
        	 for (CartItem cartItem : item) {
        		 //如果找到对应的购物项
        		 
				if(cartItem.getFlower().getFlowerId()==flowerId) {
					//直接设置数量
				 cartItem.setQuantity(newQuantity);
				 flag=true;
					
				}
			}
        	
        	if(flag==true) {
        	 out.print("操作成功");
        		out.close();
        	}
        	 
        	 
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
