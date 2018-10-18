package com.ros.dao_impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.ros.dao.MessageDao;
import com.ros.entity.Message;
import com.ros.util.BaseDao;
import com.ros.util.PageData;

public class MessageDaoImpl implements MessageDao {
/**
 * 根据花的编号查询留言信息
 * @param flowerId 花束的编号
 * return Message对象的集合
 */
	@Override
	public List<Message> queryMessege(int flowerId) {
		String sql="select * from leave_message where flowerId=?";
		List<Message> list=(List<Message>)BaseDao.select(sql, Message.class, flowerId);
		
		return list;
	}
	
	/**
	 * 查询所有的留言信息
	 */
@Override
	public PageData<Message> queryMessageByPage(int page, int pageSize, String keywords) {
		String sql="select a.messageId,a.content,a.flowerId,a.publishTime,b.userName,c.flowerName from leave_message a INNER JOIN user_basicinfo b ON a.userId=b.userId inner join flower_info c on a.flowerId=c.flowerId  where a.content like ?";
		PageData<Message> pageData=BaseDao.getPage(sql,page, pageSize, Message.class, "%"+keywords+"%");
		
		return pageData;
	}

/**
 * 
 */
@Override
	public boolean deleteMessage(int messageId) {
	Connection conn = BaseDao.getConn();

	try {

		// 在java中可以对支持事务的数据库完成事务的处理
		// 1设置自动提交为false
		//所有的sql的执行必须是同一个conn对象;
		conn.setAutoCommit(false);

		// 
		// 1先删除该留言的评论

		String sql1 = "delete from comment where messageId=?";
		
		//记得要传递第二个参数Connection对象
		BaseDao.execute(sql1, conn,messageId);

		// 2删除留言表中的记录
		String sql2 = "delete from leave_message where messageId=?";
		
		BaseDao.execute(sql2, conn,messageId);

		
		// 2 手动提交
		conn.commit();

		return true;

	} catch (Exception e) {
		// TODO Auto-generated catch block
		// 3 回滚
		try {
			conn.rollback();
			return true;
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		e.printStackTrace();
	}

		return false;
	}

}
