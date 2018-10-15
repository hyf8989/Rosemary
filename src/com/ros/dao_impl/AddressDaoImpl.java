package com.ros.dao_impl;

import java.util.ArrayList;
import java.util.List;

import com.ros.dao.AddressDao;
import com.ros.entity.Address;
import com.ros.util.BaseDao;
/**
 * 定义AddressDao接口的实现类
 * @author Administrator
 *
 */
public class AddressDaoImpl implements AddressDao {

	
	/**
	 * 展示用户的收货地址方法
	 * @param userName 用户名
	 * return List<Address> Address对象集合
	 */
	@Override
	public List<Address> queryAddressByUserName(String userName) {
		
	String sql="select a. addressId,b.userName, a.receiverProvince,a.receiverCity,a.receiverDistrict,a.addressInfo,a.receiverName,a.receiverPhone,a.receiverZip,a.createTime,a.updateTime from address_info a inner join user_basicinfo b on a.userId=b.userId where b.userName=? ";
	List<Address> list=(ArrayList<Address>) BaseDao.select(sql, Address.class, userName);	
	
	return list;
	}
	
	/**
	 *用户添加收货地址
	 * 
	 * @param address 地址信息对象
	 *  return true/添加成功 false/添加失败
	 */
	@Override
	public boolean addAddress(Address address) {
		String sql="insert into address_info(userId,receiverName,receiverPhone,receiverProvince,receiverCity,receiverDistrict,addressInfo,receiverZip,createTime,updateTime) values(?,?,?,?,?,?,?,?,?,?)";
		return BaseDao.execute(sql, address.getUserId(),address.getReceiverName(),address.getReceiverPhone(),address.getReceiverProvince(),address.getReceiverCity(),address.getReceiverDistrict(),address.getAddressInfo(),address.getReceiverZip(),address.getCreateTime(),address.getUpdateTime())>0;
	}
	
	/**
	 *用户删除收货地址
	 * 
	 * @param addressId 地址信息编号
	 *  return true/删除成功 false/删除失败
	 */
	@Override
	public boolean deleteAddress(int addressId) {
		String sql="delete from address_info where addressId=?";
		return BaseDao.execute(sql, addressId)>0;
	}
	
	/**
	 *用户更新收货地址
	 * 
	 * @param address 地址信息对象
	 *  return true/更新成功 false/更新失败
	 */
@Override
public boolean updateAddress(Address address) {
	String sql="update address_info set receiverName=?,receiverPhone=?,receiverProvince=?,receiverCity=?,receiverDistrict=?,addressInfo=?,receiverZip=?,updateTime=? where addressId=?";
	
	return BaseDao.execute(sql, address.getReceiverName(),address.getReceiverPhone(),address.getReceiverProvince(),address.getReceiverCity(),address.getReceiverDistrict(),address.getAddressInfo(),address.getReceiverZip(),address.getUpdateTime(),address.getAddressId())>0;
}
}
