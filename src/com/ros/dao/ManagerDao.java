        /** 
	 * Project Name:Rosemary 
	 * File Name:ManagerDao.java 
	 * Package Name:com.ros.dao 
	 * Date:2018年10月11日下午7:23:28 
	 * Copyright (c) 2018, ***@126.com All Rights Reserved. 
	 * 
	 */

package com.ros.dao;

import com.ros.entity.Manager;

/** 
	 * ClassName: ManagerDao <br/> 
	 *  类的作用：<br/> 
	 *   
	 *   
	 * 
	 * @author Administrator 
	 * @version  
	 * @since JDK 1.8
	 */

public interface ManagerDao {
	public Manager queryManagerByNameAndPwd(String adminName, String adminPwd);

}
