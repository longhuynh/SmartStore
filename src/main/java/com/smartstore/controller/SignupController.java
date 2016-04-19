package com.smartstore.controller;

import java.util.Arrays;
import java.util.List;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.smartstore.common.SystemConstant;
import com.smartstore.domain.Admin;
import com.smartstore.domain.Credentials;
import com.smartstore.domain.Customer;
import com.smartstore.domain.Vendor;
import com.smartstore.service.AdminService;
import com.smartstore.service.CategoryService;
import com.smartstore.service.CredentialsService;
import com.smartstore.service.CustomerService;
import com.smartstore.service.ProductService;
import com.smartstore.service.VendorService;
import com.smartstore.smtp.EmailSettings;
import com.smartstore.smtp.EmailUtil;

@Controller
public class SignupController {
	@Autowired
	AdminService adminService;
	
	@Autowired
	CustomerService customerService;

	@Autowired
	VendorService vendorService;

	@Autowired
	private CategoryService categoryService;

	@Autowired
	private ProductService productService;

	@Autowired
	private CredentialsService credentialService;


	@RequestMapping(value = "/AdminSignUp", method = RequestMethod.GET)
	public String adminSignup(@ModelAttribute Admin admin) {
		return "AdminSignUp";
	}

	@RequestMapping(value = "/AdminSignUp", method = RequestMethod.POST)
	public String processAdminSignUp(@Valid @ModelAttribute Admin admin, BindingResult result, Model model,
			RedirectAttributes redirectAttributes) {
		if (result.hasErrors()) {
			return "AdminSignUp";
		}

		List<Credentials> userName = credentialService.getAll();
		admin.getCredentials().getUsername().toLowerCase();
		for (Credentials c : userName) {
			if (c.getUsername().equals(admin.getCredentials().getUsername())) {
				model.addAttribute("username", "True");
				return "AdminSignUp";
			}
		}

		admin.getCredentials().setPassword(getHashPassword(admin.getCredentials().getPassword()));
		admin.setPassword(getHashPassword(admin.getCredentials().getPassword()));

		adminService.addNewAdmin(admin);
		redirectAttributes.addFlashAttribute("successful", "true");

		final String toEmail = admin.getEmail();

		// create Authenticator object to pass in Session.getInstance argument
		Authenticator auth = new Authenticator() {
			// override the getPasswordAuthentication method
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(SystemConstant.EMAIL, SystemConstant.EMAIL_PASSWORD);
			}
		};

		Session session = Session.getInstance(EmailSettings.getEmailProperties(), auth);
		EmailUtil.sendEmail(session, toEmail, " Welcome " + admin.getFirstName(), admin.getFirstName()
				+ "you have successfully signedup to E-Selling. You can now sign in and purchase from our site. ");
		return "redirect:/index";
	}


	@RequestMapping(value = "/CustomerSignUp", method = RequestMethod.GET)
	public String customerSignup(@ModelAttribute Customer customer) {
		return "CustomerSignUp";
	}
	
	@RequestMapping(value = "/CustomerSignUp", method = RequestMethod.POST)
	public String processCustomerSignUp(@Valid @ModelAttribute Customer customer, BindingResult result, Model model,
			RedirectAttributes redirectAttributes) {
		if (result.hasErrors()) {
			return "CustomerSignUp";
		}

		List<Credentials> userName = credentialService.getAll();
		customer.getCredentials().getUsername().toLowerCase();
		for (Credentials c : userName) {
			if (c.getUsername().equals(customer.getCredentials().getUsername())) {
				model.addAttribute("username", "True");
				return "CustomerSignUp";
			}
		}

		customer.getCredentials().setPassword(getHashPassword(customer.getCredentials().getPassword()));
		customer.setPassword(getHashPassword(customer.getCredentials().getPassword()));

		customerService.addNewCustomer(customer);
		redirectAttributes.addFlashAttribute("successful", "true");
												
		final String toEmail = customer.getEmail();

		// create Authenticator object to pass in Session.getInstance argument
		Authenticator auth = new Authenticator() {
			// override the getPasswordAuthentication method
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(SystemConstant.EMAIL, SystemConstant.EMAIL_PASSWORD);
			}
		};

		Session session = Session.getInstance(EmailSettings.getEmailProperties(), auth);
		EmailUtil.sendEmail(session, toEmail, " Welcome " + customer.getFirstName(), customer.getFirstName()
				+ "you have successfully signedup to E-Selling. You can now sign in and purchase from our site. ");
		return "redirect:/index";
	}

	@RequestMapping(value = "/VendorSignUp", method = RequestMethod.GET)
	public String vendorSignup(@ModelAttribute Vendor vendor) {

		return "VendorSignUp";
	}

	@RequestMapping(value = "/VendorSignUp", method = RequestMethod.POST)
	public String processVendorSignUp(@Valid @ModelAttribute Vendor vendor, BindingResult result, Model model,
			RedirectAttributes redirectAttributes) {
		if (result.hasErrors()) {
			return "VendorSignUp";
		}
		vendor.getCredentials().getUsername().toLowerCase();

		List<Credentials> userName = credentialService.getAll();

		for (Credentials c : userName) {
			if (c.getUsername().equals(vendor.getCredentials().getUsername())) {
				model.addAttribute("username", "True");
				return "VendorSignUp";
			}
		}
		
		vendor.getCredentials().setPassword(getHashPassword(vendor.getCredentials().getPassword()));
		vendor.setPassword(getHashPassword(vendor.getCredentials().getPassword()));

		redirectAttributes.addFlashAttribute("successful", "true");
		vendorService.addNewVendor(vendor);

		final String toEmail = vendor.getEmail();

		// create Authenticator object to pass in Session.getInstance argument
		Authenticator auth = new Authenticator() {
			// override the getPasswordAuthentication method
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(SystemConstant.EMAIL, SystemConstant.EMAIL_PASSWORD);
			}
		};

		Session session = Session.getInstance(EmailSettings.getEmailProperties(), auth);
		EmailUtil.sendEmail(session, toEmail, " Welcome " + vendor.getFirstName(), vendor.getFirstName()
				+ "you have successfully signedup to E-Selling. You can now sign in and Post your Products in  our site. ");

		return "redirect:/index";
	}

	@ModelAttribute
	public void init(Model model) {

		Integer[] months = new Integer[] { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 };
		Integer[] years = new Integer[] { 2015, 2016, 2017, 2018, 2019, 2020, 2021 };
		String[] states = new String[] { "IA", "OH", "VA", "OK", "OR", "SC", "NY", "MD", "NH", "NV", "LA", "FL", "TX",
				"UT" };
		String[] creditType = new String[] { "Visa", "MasterCard" };
		Arrays.asList(months);
		Arrays.asList(years);
		Arrays.asList(states);
		Arrays.asList(creditType);
		model.addAttribute("months", months);
		model.addAttribute("years", years);
		model.addAttribute("states", states);
		model.addAttribute("creditType", creditType);
		model.addAttribute("categories", categoryService.findAll());
		model.addAttribute("products", productService.findApprovedProducts());
	}

	public String getHashPassword(String password) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String hashedPassword = passwordEncoder.encode(password);
		return hashedPassword;
	}
}
