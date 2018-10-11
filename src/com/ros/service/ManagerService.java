package com.ros.service;

import com.ros.entity.Manager;

public interface ManagerService {
	Manager login(String adminName,String adminPwd);
}
