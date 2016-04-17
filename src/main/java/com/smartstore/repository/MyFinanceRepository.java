package com.smartstore.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.smartstore.domain.MyFinance;

@Repository
public interface MyFinanceRepository extends CrudRepository<MyFinance, Long> {

}

