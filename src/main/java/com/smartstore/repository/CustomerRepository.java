package com.smartstore.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import org.springframework.data.repository.query.Param;

import com.smartstore.domain.Customer;

public interface CustomerRepository extends CrudRepository<Customer, Long> {

	@Query("SELECT c FROM Customer c WHERE c.credentials.username = :name")
	public Customer findCustomerByUserName(@Param(value = "name") String name);
	
	

}
