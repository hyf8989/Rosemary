package com.ros.dao;

import java.util.List;

import com.ros.entity.Message;

/**
 * 自定义的MessageDao接口
 * @author hyf
 *
 */
public interface MessageDao {

	List<Message> queryMessege(int flowerId);//根据花的编号查询留言信息
}
