package com.smartstore.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.smartstore.domain.Admin;
import com.smartstore.domain.Customer;
import com.smartstore.domain.Product;
import com.smartstore.domain.Vendor;
import com.smartstore.service.AdminService;
import com.smartstore.service.CategoryService;
import com.smartstore.service.CustomerService;
import com.smartstore.service.ProductService;
import com.smartstore.service.VendorService;

@Controller
public class SearchController {

	@Autowired
	ProductService productService;

	@Autowired
	AdminService adminService;

	@Autowired
	CustomerService customerService;

	@Autowired
	VendorService vendorService;

	@Autowired
	CategoryService categoryService;

	@RequestMapping(value = "/search")
	public String search(Model model, @RequestParam("key") String text, Principal principal) {

		List<Product> products = productService.findApprovedProducts();
		if (products.isEmpty()) {
			model.addAttribute("noproduct", "true");
		}
		model.addAttribute("products", products);

		if (!text.equals("")) {
			List<Product> e = productService.findProductsByName(text);
			model.addAttribute("products", e);
			if (e.isEmpty()) {
				model.addAttribute("noproduct", "true");
			}
		}

		return "search";
	}
	
	@RequestMapping(value = "/category")
	public String searchByCategory(Model model, @RequestParam("id") String categoryId, Principal principal) {

		List<Product> products = productService.findProductsByCategory(Long.parseLong(categoryId));
		if (products.isEmpty()) {
			model.addAttribute("noproduct", "true");
		}
		
		model.addAttribute("products", products);		

		return "search";
	}

	@ModelAttribute
	public void init(Model model, Principal principal, HttpSession session) {	
		model.addAttribute("categories", categoryService.findAll());
		if (principal != null) {
			Admin admin = adminService.getAdminByUserName(principal.getName());
			if(admin != null){
				model.addAttribute("account",admin);
			}
			
			Vendor vendor = vendorService.getVendorByUserName(principal.getName());
			if(vendor != null){				
				model.addAttribute("account",vendor);
			}
			
			Customer customer = customerService.getCustomerByUserName(principal.getName());
			if(customer != null){
				session.setAttribute("canaddtocart", "true");
				model.addAttribute("account",customer);
			}
			
		}
	}
}
