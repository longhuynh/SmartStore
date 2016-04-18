package com.smartstore.serviceImpl;

import java.security.Principal;
import java.util.Date;
import java.util.Map.Entry;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.smartstore.domain.Cart;
import com.smartstore.domain.OrderDetail;
import com.smartstore.domain.Product;
import com.smartstore.domain.ProductOrder;
import com.smartstore.repository.OrderRepository;
import com.smartstore.service.CustomerService;
import com.smartstore.service.OrderService;


@Service
@Transactional
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private OrderRepository orderRepository;
	
	@Transactional(readOnly = false)
	public ProductOrder createOrder(Cart cart, Principal principal){
		ProductOrder productOrder = new ProductOrder();
		for(Entry<Product, Integer> line : cart.getProducts().entrySet()){
			productOrder.addOrderDetail(new OrderDetail(line.getKey(), line.getValue()));
		}
		productOrder.setOrderDate(new Date());
		productOrder.setCustomer(customerService.getCustomerByUserName(principal.getName()));
		return productOrder;
	}

	@Override
	public ProductOrder store(ProductOrder productOrder) {
		return orderRepository.save(productOrder);
	}



}
