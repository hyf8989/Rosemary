package com.ros.dao;

import java.util.List;

import com.ros.entity.Message;
import com.ros.util.PageData;

/**
 * 自定义的MessageDao接口
 * @author hyf
 *
 */
public interface MessageDao {

	List<Message> queryMessege(int flowerId);//根据花的编号查询留言信息
	PageData<Message> queryMessageByPage(int page,int pageSize,String keywords);//查询所有的留言记录并分页
	boolean deleteMessage(int messageId);//根据留言记录的编号删除留言信息
}
