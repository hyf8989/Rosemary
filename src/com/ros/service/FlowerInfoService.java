package com.ros.service;

import java.util.ArrayList;

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
}
