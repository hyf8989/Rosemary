package com.ros.service_impl;

import com.ros.dao.TypesDao;
import com.ros.dao_impl.TypesDaoImpl;
import com.ros.entity.Types;
import com.ros.util.PageData;

public class TypesServiceImpl implements com.ros.service.TypesService {
	public TypesDao td = new TypesDaoImpl();

	/**
	 * 显示所有类型
	 * @param 类型编号
	 * return List<Types> 类型类
	 */
	@Override
	public PageData<Types> getTypes(int page, int pageSize, String keywords) {
		// TODO Auto-generated method stub
		return td.queryType(page, pageSize, keywords);
	}
	
	/**
	 * 修改
	 */
	@Override
	public boolean updateType(Types t) {
		// TODO Auto-generated method stub
		return td.updateType(t);
	}
	
	/**
	 * 删除
	 */
	@Override
	public boolean deleteType(int typeId) {
		// TODO Auto-generated method stub
		return td.delType(typeId);
	}

}
