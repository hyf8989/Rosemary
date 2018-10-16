package com.ros.service_impl;

import java.util.List;

import com.ros.dao.MessageDao;
import com.ros.dao_impl.MessageDaoImpl;
import com.ros.entity.Message;
import com.ros.service.MessageService;

public class MessageServiceImpl implements MessageService {
/**
 * 根据花束编号获取花束留言
 * @param flowerId 花束编号
 * return Message对象的集合
 */
	MessageDao md=new MessageDaoImpl();
	@Override
	public List<Message> getMessage(int flowerId) {
		// TODO Auto-generated method stub
		return md.queryMessege(flowerId);
	}

}
