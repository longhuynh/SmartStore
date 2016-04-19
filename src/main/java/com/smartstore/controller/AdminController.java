package com.smartstore.controller;

import java.security.Principal;
import java.util.List;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.smartstore.common.SystemConstant;
import com.smartstore.domain.Product;
import com.smartstore.service.AdminService;
import com.smartstore.service.CategoryService;
import com.smartstore.service.ProductService;
import com.smartstore.service.VendorService;
import com.smartstore.smtp.EmailSettings;
import com.smartstore.smtp.EmailUtil;

@Controller
public class AdminController {

	@Autowired
	private ProductService productService;

	@Autowired
	private CategoryService categoryService;

	@Autowired
	private AdminService adminService;

	@RequestMapping(value = "/pendingProducts", method = RequestMethod.GET)
	public String pendingProducts(Product product, Model model) {
		List<Product> products = productService.findPendingProducts();
		model.addAttribute("products", products);

		if (products.isEmpty()) {
			model.addAttribute("noproduct", "empty");
		}

		return "pendingProducts";
	}

	@RequestMapping(value = "/approveProducts")
	public String approveProduct(@ModelAttribute Product product, @RequestParam("id") String id, Model model,
			Principal principal) {
		Product newproduct = productService.find(Long.parseLong(id));
		newproduct.setApproval("approved");
		productService.save(newproduct);
		return "redirect:/pendingProducts";
	}

	@RequestMapping(value = "/disapproveProduct")
	public String editItem(@ModelAttribute Product product, @RequestParam("id") String id, Model model) {
		Product newproduct = productService.find(Long.parseLong(id));
		newproduct.setApproval("disapproved");
		productService.save(newproduct);
		return "redirect:/pendingProducts";
	}

	@ModelAttribute
	public void init(Model model, Principal principal) {
		model.addAttribute("products", productService.findPendingProducts());
		model.addAttribute("admin", adminService.getAdminByUserName(principal.getName()));
	}
}