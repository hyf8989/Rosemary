package com.ros.service_impl;

import java.util.List;

import com.ros.dao.MessageDao;
import com.ros.dao_impl.MessageDaoImpl;
import com.ros.entity.Message;
import com.ros.service.MessageService;
import com.ros.util.PageData;

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
	
	/**
	 * 查询留言并分页、模糊搜索
	  * @param page 当前页码
	  * @param pageSize 每页的记录的条数
	  * @param keywords 进行迷糊查找的关键字
	 */
	@Override
		public PageData<Message> getAllMessageByPage(int page, int pageSize, String keywords) {
			// TODO Auto-generated method stub
			return md.queryMessageByPage(page, pageSize, keywords);
		}
	
	/**
	 * 根据留言编号删除留言信息
	 * @param messageId 留言编号
	 * return true/删除成功  false/删除失败
	 */
	@Override
		public boolean deleteMessage(int messageId) {
			// TODO Auto-generated method stub
			return md.deleteMessage(messageId);
		}

}
