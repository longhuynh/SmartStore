package com.smartstore.service;

import com.smartstore.domain.Customer;

public interface CustomerService {
	void addNewCustomer(Customer customer);

	public Customer getCustomerByUserName(String name);
}
