        /** 
	 * Project Name:Rosemary 
	 * File Name:UserTest.java 
	 * Package Name:com.ros.test 
	 * Date:2018年10月11日下午8:09:19 
	 * Copyright (c) 2018, ***@126.com All Rights Reserved. 
	 * 
	 */

package com.ros.test;

import java.util.ArrayList;

import com.ros.entity.UserBasicInfo;
import com.ros.service.UserService;
import com.ros.service_impl.UserServiceImpl;
import com.ros.util.BaseDao;

/** 
	 * ClassName: UserTest <br/> 
	 *  类的作用：User测试类<br/> 
	 *   
	 *   
	 * 
	 * @author Administrator 
	 * @version  
	 * @since JDK 1.8
	 */

public class UserTest {
	
	public static void main(String[] args) {
		/*UserService us=new UserServiceImpl();
		
		System.out.println(us.register("小黄"));
		
		*/
		UserService us=new UserServiceImpl();
		UserBasicInfo ub=us.login("admin33", "123");
		System.out.println(ub.getUserName());
		
	}

}
