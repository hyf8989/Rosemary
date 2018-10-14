package com.ros.dao;

import java.util.ArrayList;

import com.ros.entity.FlowerInfo;

public interface FlowerInfoDao {
	public ArrayList<FlowerInfo> getFlowerInfoByLimit();//前台展示最新鲜花
    public ArrayList<FlowerInfo> getFlowerInfoByPrice();//前台展示顶级鲜花
}
