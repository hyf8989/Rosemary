package com.ros.dao_impl;

import java.util.ArrayList;

import com.ros.dao.FlowerInfoDao;
import com.ros.entity.FlowerInfo;
import com.ros.util.BaseDao;

public class FlowerInfoDaoImpl implements FlowerInfoDao {
  /*
   *  前台展示最新上线鲜花
   */
	@Override
	public ArrayList<FlowerInfo> getFlowerInfoByLimit() {
		// TODO Auto-generated method stub
	 String sql="	select * from flower_info order by createTime desc limit 0,5";
	    ArrayList<FlowerInfo> list=(ArrayList<FlowerInfo>) BaseDao.select(sql, FlowerInfo.class);
	    if(list.size()>0) {
	      return list;
	      
	    }
	    else {
	    	return null;
	    }
	}

	/**   
	 * 展示顶级鲜花
	 * @return   
	 * @see com.ros.dao.FlowerInfoDao#getFlowerInfoByPrice()   
	 */
	@Override
	public ArrayList<FlowerInfo> getFlowerInfoByPrice() {
		// TODO Auto-generated method stub
		String sql="select * from flower_info ORDER BY  price desc limit 0,3 ";
		 ArrayList<FlowerInfo> list=(ArrayList<FlowerInfo>) BaseDao.select(sql, FlowerInfo.class);
		    if(list.size()>0) {
		      return list;
		      
		    }
		    else {
		    	return null;
		    }
	}

}
