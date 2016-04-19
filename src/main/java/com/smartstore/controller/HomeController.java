package com.smartstore.controller;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smartstore.domain.Admin;
import com.smartstore.domain.Customer;
import com.smartstore.domain.Vendor;
import com.smartstore.service.AdminService;
import com.smartstore.service.CategoryService;
import com.smartstore.service.CustomerService;
import com.smartstore.service.ProductService;
import com.smartstore.service.VendorService;

@Controller
public class HomeController {
	@Autowired
	AdminService adminService;
	
	@Autowired
	CustomerService customerService;

	@Autowired
	VendorService vendorService;
	
	@Autowired
	private ProductService productService;

	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = { "/", "/index" })
	public String index(Model model) {
		return "index";
	}

	@ModelAttribute
	public void init(Model model, Principal principal, HttpSession session) {
		model.addAttribute("products", productService.findApprovedProducts());
		model.addAttribute("categories", categoryService.findAll());
		if (principal != null) {
			Admin admin = adminService.getAdminByUserName(principal.getName());
			if(admin != null)
				model.addAttribute("account",admin);
			
			Vendor vendor = vendorService.getVendorByUserName(principal.getName());
			if(vendor != null)
				model.addAttribute("account",vendor);
			
			Customer customer = customerService.getCustomerByUserName(principal.getName());
			if(customer != null)
				model.addAttribute("account",customer);
			
		}
	}
}
