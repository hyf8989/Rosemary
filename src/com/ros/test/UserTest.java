        /** 
	 * Project Name:Rosemary 
	 * File Name:UserTest.java 
	 * Package Name:com.ros.test 
	 * Date:2018年10月11日下午8:09:19 
	 * Copyright (c) 2018, ***@126.com All Rights Reserved. 
	 * 
	 */

package com.ros.test;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import com.ros.dao_impl.UserBeanDaoImpl;
import com.ros.entity.UserBasicInfo;
import com.ros.entity.UserDetailInfo;
import com.ros.service.UserService;
import com.ros.service_impl.UserServiceImpl;
import com.ros.util.BaseDao;
import com.ros.util.MD5Util;

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
	UserService us=new UserServiceImpl();
		
	/*	String userName="admin3";
		
	
		
		Date date=new Date();
		
		String dateStr=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
		 
		String newPwd="12346";
		boolean flag=us.updatePwd(userName,dateStr, newPwd);
	System.out.println(flag);
	System.out.println(dateStr);*/
		
		
		
	/*	System.out.println(us.register("小黄"));*/
		
		/*System.out.println(us.register("小黄"));*/
		
		
		/*UserBasicInfo ub=new UserBasicInfo("大黄", "12345", "2018-10-11 20:11:06", "2018-10-11 20:11:06");
		
		System.out.println(us.insertUser(ub));*/
		/*UserBasicInfo ub=us.getUserBasicInfoByUserName("admin3");*/
		/*UserDetailInfo uDI=new UserDetailInfo(1, "17720838367", "2018-10-13 00:37:10", "2018-10-13 00:37:10");
		
		System.out.println(us.insertUserDetail(uDI));*/
/*
		UserBasicInfo ub=us.getUserBasicInfoByUserName("admin5");
		System.out.println(ub.getUserId());*/
	   UserDetailInfo udi=new UserDetailInfo(5, "1546454", "2018-09-01 00:00:00", "2018-09-01 00:00:00");
	    System.out.println(new UserBeanDaoImpl().updateUserDetailInfo(udi));
	}

}
