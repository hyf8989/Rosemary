package com.ros.service_impl;

import java.util.List;

import com.ros.dao.AddressDao;
import com.ros.dao_impl.AddressDaoImpl;
import com.ros.entity.Address;
import com.ros.service.AddressService;

/**
 * 定义实现AddressService接口的实现类
 * 
 * @author hyf
 *
 */
public class AddressServiceImpl implements AddressService {

	AddressDao ad = new AddressDaoImpl();

	/**
	 * 查询用户的收货地址
	 * 
	 * @param 用户名
	 *            return Address对象的集合
	 */
	@Override
	public List<Address> getAddressByuserName(String userName) {
		// TODO Auto-generated method stub
		return ad.queryAddressByUserName(userName);
	}
	
	/**
	 *用户添加收货地址
	 * 
	 * @param address 地址信息对象
	 *  return true/添加成功 false/添加失败
	 */
	@Override
	public boolean addAddress(Address address) {
		// TODO Auto-generated method stub
		return ad.addAddress(address);
	}
	
	/**
	 *用户删除收货地址
	 * 
	 * @param addressId 地址信息编号
	 *  return true/删除成功 false/删除失败
	 */
	@Override
	public boolean deleteAddress(int addressId) {
		// TODO Auto-generated method stub
		return ad.deleteAddress(addressId);
	}
	
	/**
	 *用户更新收货地址
	 * 
	 * @param address 地址信息类对象
	 *  return true/更新成功 false/更新失败
	 */
	@Override
	public boolean updateAddress(Address address) {
		// TODO Auto-generated method stub
		return ad.updateAddress(address);
	}
}
