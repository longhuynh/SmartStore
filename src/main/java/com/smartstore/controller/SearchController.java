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

import com.smartstore.domain.Product;
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

	@RequestMapping(value = "/productsearch")
	public String getItemsByCategory(Model model, @RequestParam("categoryId") String categoryId,
			@RequestParam("search_text") String text, Principal principal) {

		List<Product> p = productService.findProductsByCategory(Long.parseLong(categoryId));
		if (p.isEmpty()) {
			model.addAttribute("noproduct", "true");
		}
		model.addAttribute("searchproducts", p);

		if (!text.equals("")) {
			List<Product> e = productService.findProductsByName(text);
			model.addAttribute("searchproducts", e);
			if (e.isEmpty()) {
				model.addAttribute("noproduct", "true");
			}
		}

		if (principal == null) {
			if (!text.equals("")) {
				model.addAttribute("searchproducts", productService.findProductsByName(text));
			}

			return "randomSearch";
		}

		return "searchProducts";

	}

	@ModelAttribute
	public void init(Model model, Principal principal, HttpSession session) {
		// model.addAttribute("products",
		// productService.findApprovedProducts());
		model.addAttribute("categories", categoryService.findAll());
		// model.addAttribute("searchproducts",null);
		if (principal != null) {

			model.addAttribute("admin", adminService.getAdminByUserName(principal.getName()));
			model.addAttribute("vendor", vendorService.getVendorByUserName(principal.getName()));
			model.addAttribute("customer", customerService.getCustomerByUserName(principal.getName()));
		}

	}
}