package com.smartstore.controller;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.smartstore.domain.Admin;
import com.smartstore.domain.Cart;
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
	private Cart cart;
	
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

	//for 403 access denied page
		@RequestMapping(value = "/404", method = RequestMethod.GET)
		public ModelAndView accesssDenied() {

			ModelAndView model = new ModelAndView();
			
			//check if user is login
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			if (!(auth instanceof AnonymousAuthenticationToken)) {
				UserDetails userDetail = (UserDetails) auth.getPrincipal();
				System.out.println(userDetail);
			
				model.addObject("username", userDetail.getUsername());
				
			}
			
			model.setViewName("404");
			return model;

		}
		
	@ModelAttribute
	public void init(Model model, Principal principal, HttpSession session) {
		model.addAttribute("products", productService.findApprovedProducts());
		model.addAttribute("categories", categoryService.findAll());
		session.setAttribute("cart", cart);
		
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
