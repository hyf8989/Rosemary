package com.ros.service;
/**
 * 定义AddressService 接口
 * @author hyf
 *
 */

import java.util.List;

import com.ros.entity.Address;

public interface AddressService {

	List<Address> getAddressByuserName(String userName);//用户的收货地址
	boolean addAddress(Address address);//用户添加收货地址
	boolean deleteAddress(int addressId);//用户删除收货地址
	boolean updateAddress(Address address);//用户更新收货地址信息
}
