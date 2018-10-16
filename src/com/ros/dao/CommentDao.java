package com.ros.dao;
/**
 * 自定义接口CommentDao
 * @author hyf
 *
 */

import java.util.List;

import com.ros.entity.Comment;

public interface CommentDao {

	List<Comment> queryComment(int messageId);//根据留言编号获取评论信息记录
	
}
