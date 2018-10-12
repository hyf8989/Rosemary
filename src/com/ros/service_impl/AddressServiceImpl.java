package com.ros.service_impl;

import java.util.List;

import com.ros.dao.AddressDao;
import com.ros.dao_impl.AddressDaoImpl;
import com.ros.entity.Address;
import com.ros.service.AddressService;
/**
 * 定义实现AddressService接口的实现类
 * @author hyf
 *
 */
public class AddressServiceImpl implements AddressService {
	
    AddressDao ad=new AddressDaoImpl();
	
    /**
     * 查询用户的收货地址
     * @param 用户名
     * return Address对象的集合
     */
	@Override
	public List<Address> getAddressByuserName(String userName) {
		// TODO Auto-generated method stub
		return ad.queryAddressByUserName(userName);
	}

}
