package com.smartstore.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.smartstore.domain.Product;
import com.smartstore.repository.ProductRepository;
import com.smartstore.service.ProductService;


@Service
@Transactional
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductRepository productRepository;

	public List<Product> findProductsByName(String productName) {
				
		return productRepository.findProductsByName(productName);
				
	}

	public List<Product> findApprovedProducts() {
		return (List<Product>) productRepository.findApprovedProducts();
	}
	
	public List<Product> findPendingProducts() {
		return (List<Product>) productRepository.findPendingProducts();
	}
	
	public Product getProductById(Long productId){
		return  productRepository.findOne(productId);
	}
	public Product find(Long productId) {
		return productRepository.findOne(productId);
	}
	
	public List<Product> findProductsByCategory(Long categoryId) {
		return (List<Product>) productRepository.findProductsByCategory(categoryId);
}

	public Product save(Product product) {
		return productRepository.save(product);

	}
	
   public List<Product> getAllProductsByVendorId(Long vendorId){
		
		return productRepository.getAllProductsByVendorId(vendorId);
	}
   
   public void deleteProducts(Long productId){
	   productRepository.delete(productId);
   }



}
