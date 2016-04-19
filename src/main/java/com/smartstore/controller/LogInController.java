package com.smartstore.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import com.smartstore.domain.Product;
import com.smartstore.service.AdminService;
import com.smartstore.service.CategoryService;
import com.smartstore.service.CredentialsService;
import com.smartstore.service.CustomerService;
import com.smartstore.service.ProductService;
import com.smartstore.service.VendorService;

@Controller
public class LogInController {

	@Autowired
	CustomerService customerService;

	@Autowired
	VendorService vendorService;

	@Autowired
	private CategoryService categoryService;

	@Autowired
	private ProductService productService;

	@Autowired
	private AdminService adminService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}

	@RequestMapping(value = "/loginfailed", method = RequestMethod.GET)
	public String loginerror(Model model) {
		model.addAttribute("error", "true");
		return "login";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Model model, HttpSession session, SessionStatus status) {

		SecurityContextHolder.getContext().setAuthentication(null);
		status.setComplete();
		session.invalidate();
		return "redirect:/index";

	}

	@RequestMapping("/home")
	public String defaultAfterLogin(HttpServletRequest request, Model model, Principal principal, HttpSession session) {

		session.setAttribute("name", principal.getName());
		String name = principal.getName();

		if (request.isUserInRole("ROLE_VENDOR")) {
			long vendorId = vendorService.getVendorByUserName(name).getId();
			model.addAttribute("vendor", vendorService.getVendorByUserName(name));
			model.addAttribute("vendorProducts", productService.getAllProductsByVendorId(vendorId));
			return "VendorPage";
		} else if (request.isUserInRole("ROLE_ADMIN")) {
			model.addAttribute("admin", adminService.getAdminByUserName(name));
			List<Product> products = productService.findPendingProducts();
			model.addAttribute("products", products);

			if (products.isEmpty()) {
				model.addAttribute("noproduct", "empty");
			}

			return "AdminPage";
		} else {
			model.addAttribute("customer", customerService.getCustomerByUserName(name));
			return "CustomerPage";
		}
	}

	@ModelAttribute
	public void init(Model model, Principal principal, HttpSession session) {
		model.addAttribute("categories", categoryService.findAll());
		model.addAttribute("products", productService.findApprovedProducts());
		if (principal != null) {
			model.addAttribute("admin", adminService.getAdminByUserName(principal.getName()));
			model.addAttribute("vendor", vendorService.getVendorByUserName(principal.getName()));
			model.addAttribute("customer", customerService.getCustomerByUserName(principal.getName()));
		}
	}

}
