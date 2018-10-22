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


	List<Address> queryAddressByUserName(String userName);//用户查询自己的收货地址
    boolean addAddress(Address address);//用户添加收货地址	
    boolean deleteAddress(int addressId);//用户删除收货地址
    boolean updateAddress(Address address);//用户地址信息的更新
}
