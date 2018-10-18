package com.ros.dao_impl;

import com.ros.dao.TypesDao;
import com.ros.entity.Types;
import com.ros.util.BaseDao;
import com.ros.util.PageData;

public class TypesDaoImpl implements TypesDao {

	/**
	 * 后台显示鲜花类型(分页)
	 * @param typeId 编号
	 * @return List<Types> 鲜花类型类
	 */
	@SuppressWarnings("unchecked")
	@Override
	public PageData<Types> queryType(int page, int pageSize, String keywords) {
		// TODO Auto-generated method stub
		String sql = "SELECT typeId,typeName,createTime,updateTime FROM flower_type WHERE typeName LIKE ? ";
		PageData<Types> typePd = BaseDao.getPage(sql, page, pageSize,Types.class,"%"+keywords+"%");
		return typePd;
	}
	
	/**
	 * 更新类型
	 */
	@Override
	public boolean updateType(Types t) {
		// TODO Auto-generated method stub
		String sql = "UPDATE flower_type set typeName=?,updateTime=? WHERE typeId=?";
		return BaseDao.execute(sql, t.getTypeName(),t.getUpdateTime(),t.getTypeId())>0;
	}
	
	/**
	 * 删除类型
	 */
	@Override
	public boolean delType(int typeId) {
		// TODO Auto-generated method stub
		String sql = "DELETE from flower_type WHERE typeId=?";
		return BaseDao.execute(sql, typeId)>0;
	}

}
