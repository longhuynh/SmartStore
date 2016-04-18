package com.smartstore.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.smartstore.domain.Credentials;
import com.smartstore.repository.CredentialRepository;
import com.smartstore.service.CredentialsService;

@Service
@Transactional
public class CredentilasServiceImpl implements CredentialsService {

	@Autowired
	CredentialRepository credentialRepository;

	public List<Credentials> getAll() {

		return (List<Credentials>) credentialRepository.findAll();
	}

}
