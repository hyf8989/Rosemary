package com.ros.service_impl;

import java.util.ArrayList;

import com.ros.dao.FlowerInfoDao;
import com.ros.dao_impl.FlowerInfoDaoImpl;
import com.ros.entity.FlowerInfo;
import com.ros.service.FlowerInfoService;
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

}
