package com.ros.test;

import com.ros.entity.Manager;
import com.ros.service.ManagerService;
import com.ros.service_impl.ManagerServiceImpl;

public class MangerServiceTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ManagerService ms = new ManagerServiceImpl();
		Manager m = ms.login("Amery", "123456");
		System.out.println(m);
	}

}
