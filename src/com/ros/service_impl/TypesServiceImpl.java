package com.ros.service_impl;

import java.util.List;

import com.ros.dao.TypesDao;
import com.ros.dao_impl.TypesDaoImpl;
import com.ros.entity.Types;

public class TypesServiceImpl implements com.ros.service.TypesService {
	public TypesDao td = new TypesDaoImpl();

	/**
	 * 显示所有类型
	 * @param 类型编号
	 * return List<Types> 类型类
	 */
	@Override
	public List<Types> getTypes(int typeId) {
		// TODO Auto-generated method stub
		return td.queryType(typeId);
	}

}
