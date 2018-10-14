package com.ros.test;

import java.util.ArrayList;
import java.util.List;

import com.ros.dao.AddressDao;
import com.ros.dao_impl.AddressDaoImpl;
import com.ros.entity.Address;
import com.ros.service.AddressService;
import com.ros.service_impl.AddressServiceImpl;

public class AddressServiceTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		/*AddressService as=new AddressServiceImpl();
		List<Address> list=as.getAddressByuserName("小黄");
		int n=list.size();
		System.out.println(n);*/
		
		AddressDao ad=new AddressDaoImpl();
		List<Address> list=ad.queryAddressByUserName("小黄");
		int n=list.size();
		System.out.println(n);
	}

}
