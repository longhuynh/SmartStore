package com.smartstore.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.smartstore.domain.Product;
import com.smartstore.service.CategoryService;
import com.smartstore.service.ProductService;
import com.smartstore.service.VendorService;

@Controller
public class VendorController {

	@Autowired
	ProductService productService;

	@Autowired
	VendorService vendorService;

	@Autowired
	CategoryService categoryService;

	@RequestMapping(value = "/myProducts", method = RequestMethod.GET)
	public String getProductsById(Model model, Principal principal) {
		String name = principal.getName();
		long vendorId = vendorService.getVendorByUserName(name).getId();
		List<Product> products = productService.getAllProductsByVendorId(vendorId);

		if (products.isEmpty()) {
			model.addAttribute("emptylist", "true");
		}

		model.addAttribute("products", products);

		return "myProducts";
	}

	@RequestMapping("/vendor")
	public String getVendorPage(Model model) {
		return "VendorPage";
	}

	@ModelAttribute
	public void init(Model model, Principal principal) {
		model.addAttribute("categories", categoryService.findAll());
		model.addAttribute("vendor", vendorService.getVendorByUserName(principal.getName()));
	}
}
