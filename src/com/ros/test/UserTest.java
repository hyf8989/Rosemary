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
import com.ros.entity.UserDetailInfo;
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
		/*UserBasicInfo ub=new UserBasicInfo("大黄", "12345", "2018-10-11 20:11:06", "2018-10-11 20:11:06");
		
		System.out.println(us.insertUser(ub));*/
		/*UserBasicInfo ub=us.getUserBasicInfoByUserName("admin3");*/
		UserDetailInfo uDI=new UserDetailInfo(1, "17720838367", "2018-10-13 00:37:10", "2018-10-13 00:37:10");
		
		System.out.println(us.insertUserDetail(uDI));
		
	}

}
