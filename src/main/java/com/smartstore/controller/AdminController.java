package com.smartstore.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.smartstore.domain.Product;
import com.smartstore.service.AdminService;
import com.smartstore.service.ProductService;

@Controller
public class AdminController {
	@Autowired
	private ProductService productService;

	@Autowired
	private AdminService adminService;

	@RequestMapping(value = "/approveProducts")
	public String approveProduct(@ModelAttribute Product product, @RequestParam("id") String id, Model model,
			Principal principal) {
		Product newproduct = productService.find(Long.parseLong(id));
		newproduct.setApproval("approved");
		productService.save(newproduct);
		return "redirect:/home";
	}

	@RequestMapping(value = "/disapproveProduct")
	public String editItem(@ModelAttribute Product product, @RequestParam("id") String id, Model model) {
		Product newproduct = productService.find(Long.parseLong(id));
		newproduct.setApproval("disapproved");
		productService.save(newproduct);
		return "redirect:/home";
	}

	@ModelAttribute
	public void init(Model model, Principal principal) {
		model.addAttribute("products", productService.findPendingProducts());
		model.addAttribute("admin", adminService.getAdminByUserName(principal.getName()));
	}
}