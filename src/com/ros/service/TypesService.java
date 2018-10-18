package com.ros.service;

import com.ros.entity.Types;
import com.ros.util.PageData;

/**
 * 自定义类型接口TypesService
 * @author Administrator
 *
 */
public interface TypesService {
	public PageData<Types> getTypes(int page, int pageSize, String keywords);//显示类型
	public boolean updateType(Types t);//更新类型
	public boolean deleteType(int typeId);//类型删除

}
