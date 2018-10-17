package com.ros.service;

import java.util.List;

import com.ros.entity.Types;

/**
 * 自定义类型接口TypesService
 * @author Administrator
 *
 */
public interface TypesService {
	public List<Types> getTypes(int typeId);//显示类型

}
