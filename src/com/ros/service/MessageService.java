package com.ros.service;
/**
 * 自定义的MessageService接口
 * @author hyf
 *
 */

import java.util.List;

import com.ros.entity.Message;
import com.ros.util.PageData;

public interface MessageService {

	List<Message> getMessage(int flowerId);//查询花束的留言
	PageData<Message> getAllMessageByPage(int page, int pageSize, String keywords);//查询所有留言并分页
	boolean deleteMessage(int messageId);//根据留言编号删除留言
}
