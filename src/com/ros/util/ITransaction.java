package com.ros.util;


import java.sql.Connection;

/**
 * 事务执行接口
 */
public interface ITransaction {
	/**
	 * 事务执行方法
	 * 
	 * @param conn
	 *            数据库连接对象
	 * @return 执行结果
	 */
	public Object execute(Connection conn);
}
