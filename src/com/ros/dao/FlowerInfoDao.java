package com.ros.dao;

import java.util.ArrayList;

import com.ros.entity.FlowerInfo;
import com.ros.entity.FlowerType;
import com.ros.util.PageData;

public interface FlowerInfoDao {
	public ArrayList<FlowerInfo> getFlowerInfoByLimit();//前台展示最新鲜花
    public ArrayList<FlowerInfo> getFlowerInfoByPrice();//前台展示顶级鲜花
    public PageData<FlowerInfo> queryFlowerInfoByPage(int page, int pageSize, String keyword,int priceStart,int priceEnd,int typeId1,int typeId2,String sort,String sortType);//主页显示所有鲜花
    public ArrayList<FlowerType> queryFlowerType();//获取当前所有花的类别
}
