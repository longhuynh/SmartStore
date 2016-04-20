package com.smartstore.controller;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.smartstore.domain.Cart;
import com.smartstore.domain.ProductOrder;
import com.smartstore.service.CategoryService;
import com.smartstore.service.CustomerService;
import com.smartstore.service.OrderService;

@Controller
@SessionAttributes(types = { ProductOrder.class })
@RequestMapping("/checkout")
public class CheckoutController {
	@Autowired
	private Cart cart;

	@Autowired
	private OrderService orderService;

	@Autowired
	CustomerService customerService;

	@Autowired
	CategoryService categoryService;

	@RequestMapping(method = RequestMethod.GET)
	public void show(Model model, Principal principal, HttpSession session) {
		if (principal == null) {
			System.out.println("Session not set");
		} else {

			System.out.println("Session set");
		}
		/*
		 * Account account = (Account)
		 * session.getAttribute(LoginController.ACCOUNT_ATTRIBUTE);
		 */
		ProductOrder productOrder = this.orderService.createOrder(this.cart, principal);
		// session.setAttribute("productOrder", productOrder);
		model.addAttribute("productOrder", productOrder);

	}

	@RequestMapping(method = RequestMethod.POST, params = "update")
	public String update(@ModelAttribute ProductOrder productOrder) {
		productOrder.updateOrderDetails();
		return "checkout";
	}

	@RequestMapping(method = RequestMethod.POST, params = "order")
	public String checkout(SessionStatus status, @Validated @ModelAttribute ProductOrder productOrder,
			BindingResult errors) {
		if (errors.hasErrors()) {
			return "checkout";
		} else {
			this.orderService.store(productOrder);
			status.setComplete(); // remove order from session
			this.cart.clear(); // clear the cart
			return "redirect:/home";
		}
	}

	@RequestMapping(method = RequestMethod.POST, params = "cancel")
	public String cancel(SessionStatus status, @ModelAttribute ProductOrder productOrder, HttpSession session) {
		status.setComplete(); // remove order from session
		this.cart.clear(); // clear the cart
		return "redirect:/home";
	}

	@ModelAttribute
	public void init(Model model, Principal principal) {
		String[] states = new String[] { "IA", "OH", "VA", "OK", "OR", "SC", "NY", "MD", "NH", "NV", "LA", "FL", "TX",
		"UT" };
		model.addAttribute("states", states);
		model.addAttribute("customer", customerService.getCustomerByUserName(principal.getName()));
		model.addAttribute("categories", categoryService.findAll());
	}

}
