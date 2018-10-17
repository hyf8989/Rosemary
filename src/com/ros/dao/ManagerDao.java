/** 
* Project Name:Rosemary 
* File Name:ManagerDao.java 
* Package Name:com.ros.dao 
* Date:2018年10月11日下午7:23:28 
* Copyright (c) 2018, ***@126.com All Rights Reserved. 
* 
*/

package com.ros.dao;

import java.util.List;

import com.ros.entity.Manager;
import com.ros.util.PageData;

/**
 * ClassName: ManagerDao <br/>
 * 类的作用：<br/>
 * 
 * 
 * 
 * @author Administrator
 * @version
 * @since JDK 1.8
 */

public interface ManagerDao {
	// 登陆验证的查询
	public Manager queryManagerByNameAndPwd(String adminName, String adminPwd);

	// 添加管理员
	boolean addManager(Manager m);

	// 显示管理员信息
	List<Manager> queryManager();
	
	//显示管理员分页
	PageData<Manager> queryManagerByPage(int page,int pageSize,String keywords);

	// 删除管理员
	boolean delManager(int adminId);

	// 重置密码
	boolean updateManagerPwd(String adminName);

	// 锁定管理员状态
	boolean lockManagerStatus(String adminName);
	
	// 解锁管理员状态
	boolean clearManagerStatus(String adminName);
	


}
