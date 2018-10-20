package com.ros.service;

import java.util.ArrayList;
import java.util.List;

import com.ros.entity.FlowerInfo;
import com.ros.entity.FlowerType;
import com.ros.util.PageData;
/*
 * 鲜花业务层
 */
public interface FlowerInfoService {
	public ArrayList<FlowerInfo> getFlowerInfoByLimit();//前台显示最新上线鲜花
	public ArrayList<FlowerInfo> getFlowerInfoByPrice();//前台展示顶级鲜花
	public PageData<FlowerInfo> queryFlowerInfoByPage(int page, int pageSize, String keyword,int priceStart,int priceEnd,int typeId1,int typeId2,String sort,String sortType);//主页分页显示所有鲜花
	public ArrayList<FlowerType> queryFlowerType();//查询当前所有花类
	public FlowerInfo getFlowerInfoById(int flowerId);//根据鲜花编号获得鲜花的所有信息
	public boolean setFlowerStockByFlowerId(int flowerId,int stock);//修改鲜花库存
	PageData<FlowerInfo> queryFlowerByPage(int page,int pageSize,String keywords);
	List<FlowerInfo> queryFlowerInfo();
	boolean insertFlower(FlowerInfo f);//后台新品发布
	boolean updateFlowerStock(int flowerId,int stock);//根据鲜花编号更新鲜花的库存量（后台鲜花的进货）
}
