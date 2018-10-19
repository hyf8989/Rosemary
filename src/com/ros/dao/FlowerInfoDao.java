package com.ros.dao;

import java.util.ArrayList;
import java.util.List;

import com.ros.entity.FlowerInfo;
import com.ros.entity.FlowerType;
import com.ros.util.PageData;

public interface FlowerInfoDao {
	public ArrayList<FlowerInfo> getFlowerInfoByLimit();//前台展示最新鲜花
    public ArrayList<FlowerInfo> getFlowerInfoByPrice();//前台展示顶级鲜花
    public PageData<FlowerInfo> queryFlowerInfoByPage(int page, int pageSize, String keyword,int priceStart,int priceEnd,int typeId1,int typeId2,String sort,String sortType);//主页显示所有鲜花
    public ArrayList<FlowerType> queryFlowerType();//获取当前所有花的类别
    public FlowerInfo getFlowerInfoById(int flowerId);//根据鲜花ID获得鲜花的信息（生成一个鲜花实体类对象）
    public boolean setFlowerStockByFlowerId(int flowerId,int stock);//根据鲜花编号更改鲜花库存
    PageData<FlowerInfo> queryFlowerByPage(int page,int pageSize,String keywords);
    List<FlowerInfo> queryFlowerInfo();
    boolean insertFlowerInfo(FlowerInfo f);//后台新品发布
}
