package com.ros.dao;

import java.util.List;

import com.ros.entity.Types;
import com.ros.util.PageData;

/**
 * 自定义鲜花类型接口TypesDao
 * @author Administrator
 *
 */
public interface TypesDao {
	PageData<Types> queryType(int page,int pageSize,String keywords);//分页查询所有类型
	boolean updateType(Types t);//修改类型
	boolean delType(int typeId);//删除类型
	boolean addType(Types t);//增加类型
	List<Types> queryType();

}
