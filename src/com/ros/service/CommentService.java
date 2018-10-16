package com.ros.service;
/**
 * 自定义CommentService接口
 * @author hyf
 *
 */

import java.util.List;

import com.ros.entity.Comment;

public interface CommentService {

	List<Comment> getComment(int messageId);//根据留言编号查询评论信息记录
}
