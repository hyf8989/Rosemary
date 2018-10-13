package com.ros.test;

import java.util.ArrayList;

import com.ros.entity.FlowerInfo;
import com.ros.service.FlowerInfoService;
import com.ros.service_impl.FlowerInfoServiceImpl;
/*
 * 鲜花测试类
 */
public class FlowerTest {

	public static void main(String[] args) {
		FlowerInfoService fIS=new FlowerInfoServiceImpl();
		ArrayList<FlowerInfo> LIST =fIS.getFlowerInfoByLimit();
		for (FlowerInfo flowerInfo : LIST) {
			System.out.println(flowerInfo.getbPicture());
			
		}
	}
}
