package com.ros.service;
/**
 * 自定义的MessageService接口
 * @author hyf
 *
 */

import java.util.List;

import com.ros.entity.Message;

public interface MessageService {

	List<Message> getMessage(int flowerId);//查询花束的留言
}
