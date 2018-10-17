package com.ros.dao_impl;

import java.util.List;

import com.ros.dao.TypesDao;
import com.ros.entity.Types;
import com.ros.util.BaseDao;

public class TypesDaoImpl implements TypesDao {

	/**
	 * 后台显示鲜花类型
	 * @param typeId 编号
	 * @return List<Types> 鲜花类型类
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<Types> queryType() {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM flower_type";
		return (List<Types>) BaseDao.select(sql, Types.class);
	}
	
	@Override
	public boolean updateType(Types t) {
		// TODO Auto-generated method stub
		String sql = "UPDATE flower_type set typeName=?,updateTime=? WHERE typeId=?";
		return BaseDao.execute(sql, t.getTypeName(),t.getUpdateTime(),t.getTypeId())>0;
	}

}
