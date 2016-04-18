package com.smartstore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smartstore.service.CategoryService;
import com.smartstore.service.ProductService;

@Controller
public class HomeController {

	@Autowired
	private ProductService productService;

	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = { "/", "/index" })
	public String index(Model model) {
		return "index";
	}

	@ModelAttribute
	public void init(Model model) {
		model.addAttribute("products", productService.findApprovedProducts());
		model.addAttribute("categories", categoryService.findAll());
	}
}
