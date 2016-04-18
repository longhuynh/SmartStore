package com.smartstore.repository;

import org.springframework.data.repository.CrudRepository;

import com.smartstore.domain.ProductOrder;

public interface OrderRepository extends CrudRepository<ProductOrder, Long> {

}
