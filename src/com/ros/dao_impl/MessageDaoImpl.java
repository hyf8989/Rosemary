package com.ros.dao_impl;

import java.util.List;

import com.ros.dao.MessageDao;
import com.ros.entity.Message;
import com.ros.util.BaseDao;

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

}
