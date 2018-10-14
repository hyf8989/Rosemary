package com.ros.service;

import java.util.ArrayList;

import com.ros.entity.FlowerInfo;
/*
 * 鲜花业务层
 */
public interface FlowerInfoService {
	public ArrayList<FlowerInfo> getFlowerInfoByLimit();//前台显示最新上线鲜花
	public ArrayList<FlowerInfo> getFlowerInfoByPrice();//前台展示顶级鲜花
}
