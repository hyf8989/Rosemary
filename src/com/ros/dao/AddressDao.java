package com.ros.dao;
/**
 * 定义AddressDao 接口
 * @author hyf
 *
 */

import java.util.ArrayList;
import java.util.List;

import com.ros.entity.Address;

public interface AddressDao {

	ArrayList<Address> queryAddressByUserName(String userName);//用户查询自己的收货地址
	
}
