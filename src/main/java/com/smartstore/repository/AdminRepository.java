package com.smartstore.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.smartstore.domain.Admin;


@Repository
public interface AdminRepository extends CrudRepository<Admin, Long> {

	@Query("SELECT a FROM Admin a WHERE a.credentials.username = :name")
	public Admin findAdminByUserName(
			@Param(value = "name") String name);

}
