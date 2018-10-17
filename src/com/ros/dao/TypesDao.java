package com.ros.dao;

import java.util.List;

import com.ros.entity.Types;

/**
 * 自定义鲜花类型接口TypesDao
 * @author Administrator
 *
 */
public interface TypesDao {
	List<Types> queryType(int typeId);//查询所有类型

}
