package com.ros.service_impl;

import java.util.ArrayList;

import com.ros.dao.FlowerInfoDao;
import com.ros.dao_impl.FlowerInfoDaoImpl;
import com.ros.entity.FlowerInfo;
import com.ros.entity.FlowerType;
import com.ros.service.FlowerInfoService;
import com.ros.util.PageData;
/*
 * 鲜花业务层接口实现类
 */
public class FlowerInfoServiceImpl implements FlowerInfoService {
/*
 * 前台显示最新上线鲜花
 */ 
	FlowerInfoDao fID=new FlowerInfoDaoImpl();
	@Override
	public ArrayList<FlowerInfo> getFlowerInfoByLimit() {
		// TODO Auto-generated method stub
		return fID.getFlowerInfoByLimit();
	}
	/**   
	 * <p>Title: getFlowerInfoByPrice</p>   
	 * <p>Description: </p>   
	 * @return   
	 * @see com.ros.service.FlowerInfoService#getFlowerInfoByPrice()   
	 */
	@Override
	public ArrayList<FlowerInfo> getFlowerInfoByPrice() {
		// TODO Auto-generated method stub
		return fID.getFlowerInfoByPrice();
	}
	/**   
	 * <p>Title: queryFlowerInfoByPage</p>   
	 * <p>Description: </p>   
	 * @param page  页码
	 * @param pageSize  每页数据条数
	 * @param keyword   搜索关键词
	 * @param priceStart  价格起始点
	 * @param priceEnd   价格终结点
	 * @param typeId1    选中类别编号
	 * @param typeId2   选中类别编号
	 * @param sort     按照什么字段排序
	 * @param sortType   排序方式
	 * @return   
	 * @see com.ros.service.FlowerInfoService#queryFlowerInfoByPage(int, int, java.lang.String, int, int, int, int, java.lang.String, java.lang.String)   
	 */
	@Override
	public PageData<FlowerInfo> queryFlowerInfoByPage(int page, int pageSize, String keyword, int priceStart,
			int priceEnd, int typeId1, int typeId2, String sort, String sortType) {
		// TODO Auto-generated method stub
		return fID.queryFlowerInfoByPage(page, pageSize, keyword, priceStart, priceEnd, typeId1, typeId2, sort, sortType);
	}
	/* 
	 *查询所有鲜花的类别
	 */
	@Override
	public ArrayList<FlowerType> queryFlowerType() {
		// TODO Auto-generated method stub
		return fID.queryFlowerType();
	}
	/* 
	 * 根据鲜花的ID获得鲜花的所有信息
	 */
	@Override
	public FlowerInfo getFlowerInfoById(int flowerId) {
		// TODO Auto-generated method stub
		return fID.getFlowerInfoById(flowerId);
	}
	/**
	 * 后台商品分页展示
	 */
	@Override
		public PageData<FlowerInfo> queryFlowerByPage(int page, int pageSize, String keywords) {
			// TODO Auto-generated method stub
			return fID.queryFlowerByPage(page, pageSize, keywords);
		}
}
