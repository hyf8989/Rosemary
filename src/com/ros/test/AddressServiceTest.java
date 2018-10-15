package com.ros.test;


import java.text.SimpleDateFormat;
import java.util.Date;

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
		
	/*	AddressDao ad=new AddressDaoImpl();
		List<Address> list=ad.queryAddressByUserName("小黄");
		int n=list.size();
		System.out.println(n);*/
		AddressService as=new AddressServiceImpl();
		
         Date date=new Date();
		
		String dateStr=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
		
		Address address=new Address("福建省", "厦门", "湖里", "加菲", "15923456789", "明发园西区", 123456, dateStr,4);
		
		boolean flag=as.updateAddress(address);
		
		System.out.println(flag);
	}

}
