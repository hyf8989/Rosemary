package com.ros.dao_impl;

import java.util.List;

import com.ros.dao.CommentDao;
import com.ros.entity.Comment;
import com.ros.util.BaseDao;

public class CommentDaoImpl implements CommentDao {
	/**
	 * 根据留言编号查询评论信息
	 * @param messageId 花束的编号
	 * return Comment对象的集合
	 */
	@Override
	public List<Comment> queryComment(int messageId) {
		String sql="select * from comment where messageId=?";
		List<Comment> list=(List<Comment>)BaseDao.select(sql, Comment.class, messageId);
		return list;
	}

}
