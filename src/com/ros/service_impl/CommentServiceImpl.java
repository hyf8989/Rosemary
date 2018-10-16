package com.ros.service_impl;

import java.util.List;

import com.ros.dao.CommentDao;
import com.ros.dao_impl.CommentDaoImpl;
import com.ros.entity.Comment;
import com.ros.service.CommentService;

public class CommentServiceImpl implements CommentService {

	CommentDao cd=new CommentDaoImpl();
	
	/**
	 * 根据留言编号查询评论信息
	 * @param messageId 花束的编号
	 * return Comment对象的集合
	 */
	@Override
	public List<Comment> getComment(int messageId) {
		// TODO Auto-generated method stub
		return cd.queryComment(messageId);
	}

}
