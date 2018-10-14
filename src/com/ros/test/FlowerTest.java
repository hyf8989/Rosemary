package com.ros.test;

import java.util.ArrayList;

import com.ros.dao.FlowerInfoDao;
import com.ros.dao_impl.FlowerInfoDaoImpl;
import com.ros.entity.FlowerInfo;
import com.ros.service.FlowerInfoService;
import com.ros.service_impl.FlowerInfoServiceImpl;
import com.ros.util.PageData;
/*
 * 鲜花测试类
 */
public class FlowerTest {

	public static void main(String[] args) {
		/*FlowerInfoService fIS=new FlowerInfoServiceImpl();
		ArrayList<FlowerInfo> LIST =fIS.getFlowerInfoByPrice();
		for (FlowerInfo flowerInfo : LIST) {
			System.out.println(flowerInfo.getPrice());
			
		}*/
		FlowerInfoService fIS=new FlowerInfoServiceImpl();
		PageData<FlowerInfo> pd=fIS.queryFlowerInfoByPage(1, 2, "%%", 0, 1000, 1, 9, "flowerName", "desc");
	    System.out.println(pd.getTotal());
	}
}
