package com.smartstore.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.smartstore.domain.Admin;
import com.smartstore.repository.AdminRepository;
import com.smartstore.repository.CredentialRepository;
import com.smartstore.service.AdminService;

@Service
@Transactional
public class AdminServiceImpl implements AdminService{
	
	@Autowired 
	AdminRepository adminRepository;
	
	
	@Autowired 
	private CredentialRepository credentialRepository;
	
	public Admin getAdminByUserName(String name){
		
		return adminRepository.findAdminByUserName(name);
	}
	
	
	

}
