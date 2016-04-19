package com.smartstore.service;

import com.smartstore.domain.Admin;

public interface AdminService {
	public Admin getAdminByUserName(String name);
	
	public void addNewAdmin(Admin admin);
}
