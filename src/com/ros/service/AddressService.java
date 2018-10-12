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
}
