package com.ros.test;

import java.util.ArrayList;
import java.util.HashMap;

import org.eclipse.jdt.internal.compiler.flow.FlowInfo;

import com.ros.dao.FlowerInfoDao;
import com.ros.dao_impl.FlowerInfoDaoImpl;
import com.ros.entity.FlowerInfo;
import com.ros.entity.FlowerType;
import com.ros.entity.UserBasicInfo;
import com.ros.service.FlowerInfoService;
import com.ros.service_impl.FlowerInfoServiceImpl;
import com.ros.util.BaseDao;
import com.ros.util.PageData;
import com.sun.org.apache.bcel.internal.generic.ARRAYLENGTH;
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
		/*String keyword="";
		PageData<FlowerInfo> pd=fIS.queryFlowerInfoByPage(1, 2, "%"+keyword+"%", 0, 1000, 1, 9, "flowerName", "desc");
	    System.out.println(pd.getTotal());
		  ArrayList<FlowerType> list =fIS.queryFlowerType();
		  for (FlowerType flowerType : list) {
			System.out.println(flowerType.getTypeName());
		}*/
		/*String sql="select min(typeId) as typeId  from flower_type";
		ArrayList<FlowerType> typeid=(ArrayList<FlowerType>) BaseDao.select(sql, FlowerType.class);
		System.out.println(typeid.get(0).getTypeId());*/
	    
		/*PageData<FlowerInfo> pd=new FlowerInfoServiceImpl().queryFlowerInfoByPage(1, 6, "%%", 0, 1000, 1, 9, "price", "asc");
		System.out.println(pd.getData().get(0).getFlowerId());*/
String sql="select * from flower_info order by ?";
ArrayList<FlowerInfo> list=(ArrayList<FlowerInfo>) BaseDao.select(sql, FlowerInfo.class, "flowerName");
		System.out.println(list.get(0).getFlowerId());
		
	}
}
