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
	public ArrayList<Address> queryAddressByUserName(String userName) {
		
	String sql="select a. addressId,b.userName, a.receiverProvince,a.receiverCity,a.receiverDistrict,a.addressInfo,a.receiverName,a.receiverPhone,a.receiverZip,a.createTime,a.updateTime from address_info a inner join user_basicinfo b on a.userId=b.userId where b.userName=? ";
	ArrayList<Address> list=(ArrayList<Address>) BaseDao.select(sql, Address.class, userName);	
	
	return list;
	}
	public static void main(String[] args) {
		String sql="select a.addressId,b.userName, a.receiverProvince,a.receiverCity,a.receiverDistrict,a.addressInfo,a.receiverName,a.receiverPhone,a.receiverZip,a.createTime,a.updateTime from address_info a inner join user_basicinfo b on a.userId=b.userId where b.userName=? ";
		ArrayList<Address> list=(ArrayList<Address>) BaseDao.select(sql, Address.class, "小黄");	
		System.out.println(list.size());
	}

}
