package com.smartstore.service;

import java.security.Principal;

import com.smartstore.domain.Cart;
import com.smartstore.domain.ProductOrder;

public interface OrderService {

	public ProductOrder createOrder(Cart cart, Principal principal);

	public ProductOrder store(ProductOrder productOrder);
}
