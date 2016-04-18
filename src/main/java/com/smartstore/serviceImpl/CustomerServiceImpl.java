package com.smartstore.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.smartstore.domain.Customer;
import com.smartstore.repository.CredentialRepository;
import com.smartstore.repository.CustomerRepository;
import com.smartstore.service.CustomerService;


@Service
@Transactional
public class CustomerServiceImpl implements CustomerService{

	@Autowired
    private  CustomerRepository customerRepository;
	
	
	@Autowired 
	private CredentialRepository credentialRepository;
		

	
	public void addNewCustomer(Customer customer){
		credentialRepository.save(customer.getCredentials());
		customerRepository.save(customer);
	}
	
public Customer getCustomerByUserName(String name){
		
		return customerRepository.findCustomerByUserName(name);
	}
	
}

