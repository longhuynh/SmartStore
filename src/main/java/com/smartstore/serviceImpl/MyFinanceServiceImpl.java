package com.smartstore.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.smartstore.domain.MyFinance;
import com.smartstore.repository.MyFinanceRepository;
import com.smartstore.service.MyFinanceService;

@Service
@Transactional
public class MyFinanceServiceImpl implements MyFinanceService {

	@Autowired
	MyFinanceRepository myFinanceRepository;

	public List<MyFinance> getAll() {

		return (List<MyFinance>) myFinanceRepository.findAll();
	}

}
