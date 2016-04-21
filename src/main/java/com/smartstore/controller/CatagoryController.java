package com.smartstore.controller;
import java.io.File;
import java.security.Principal;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.smartstore.domain.Category;
import com.smartstore.domain.OrderDetail;
import com.smartstore.service.CategoryService;

import com.smartstore.service.ProductService; 
import com.smartstore.service.VendorService;



@Controller 
public class CatagoryController {
	@Autowired
	ProductService productService;
	@Autowired
	CategoryService categoryService;
	@Autowired
	VendorService vendorService;


	@RequestMapping(value = "/addCatagory", method = RequestMethod.GET)
	public String inputCatagory(@ModelAttribute Category category, Model model ,Principal principal) {		
		

		return "addCatagory";
	} 

	@RequestMapping(value = "/addCatagory", method = RequestMethod.POST)
	public String saveCatagory(@Valid @ModelAttribute Category category,BindingResult result,HttpServletRequest request ,
			Model model,Principal principal ,RedirectAttributes redirectAttributes) {

		if(result.hasErrors()){
			model.addAttribute("categories", categoryService.findAll());
			return "addCatagory";
		}

		categoryService.saveCategory(category);
		redirectAttributes.addFlashAttribute("category",category);
		return "redirect:/vendor";
	}
	
	 @ModelAttribute
	 public void init(Model model,Principal principal){
		 
//		 model.addAttribute("products",productService.findApprovedProducts());
//		 model.addAttribute("categories", categoryService.findAll());	
//		 model.addAttribute("orderDetail", new OrderDetail());
		

		 model.addAttribute("vendor",vendorService.getVendorByUserName(principal.getName()));

	 }


}

