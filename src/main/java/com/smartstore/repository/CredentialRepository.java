package com.smartstore.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.smartstore.domain.Credentials;

@Repository
public interface CredentialRepository extends CrudRepository<Credentials, String> {

}
