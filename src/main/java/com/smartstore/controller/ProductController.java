package com.smartstore.controller;

import java.io.File;
import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.smartstore.domain.Admin;
import com.smartstore.domain.Category;
import com.smartstore.domain.Customer;
import com.smartstore.domain.OrderDetail;
import com.smartstore.domain.Product;
import com.smartstore.domain.Vendor;
import com.smartstore.service.AdminService;
import com.smartstore.service.CategoryService;
import com.smartstore.service.CustomerService;
import com.smartstore.service.ProductService;
import com.smartstore.service.VendorService;

@Controller
public class ProductController {
	@Autowired
	ProductService productService;
	@Autowired
	CategoryService categoryService;
	@Autowired
	VendorService vendorService;

	@Autowired
	CustomerService customerService;

	@Autowired
	AdminService adminService;

	@RequestMapping(value = "/addProduct", method = RequestMethod.GET)
	public String inputProduct(@ModelAttribute Product product, Model model, Principal principal) {
		model.addAttribute("vendor", vendorService.getVendorByUserName(principal.getName()));

		return "addProduct";
	}

	@RequestMapping(value = "/addProduct", method = RequestMethod.POST)
	public String saveProduct(@Valid @ModelAttribute Product product, BindingResult result, HttpServletRequest request,
			Model model, Principal principal, RedirectAttributes redirectAttributes) {

		if (result.hasErrors()) {
			model.addAttribute("categories", categoryService.findAll());
			return "addProduct";
		}
		MultipartFile productImage = product.getProductImage();

		String rootDirectory = request.getSession().getServletContext().getRealPath("/");

		if (productImage != null && !productImage.isEmpty()) {
			System.out.println(rootDirectory);

			try {

				product.setProductPath("/resources/images/" + product.getProductName() + ".png");
				productImage.transferTo(
						new File("C:\\Users\\reno\\Desktop\\Smartstore\\src\\main\\webapp\\resources\\images\\"
								+ product.getProductName() + ".png"));

			} catch (Exception e) {
				throw new RuntimeException("product Image saving failed", e);
			}

		}
		product.setApproval("pending");
		Category cat = categoryService.find(product.getCategory().getCategoryId());

		cat.addProducts(product);
		Vendor vendor = vendorService.getVendorByUserName(principal.getName());
		vendor.addProducts(product);
		vendorService.saveVendor(vendor);

		redirectAttributes.addFlashAttribute("addproduct", "true");
		redirectAttributes.addFlashAttribute("vendor", vendor);

		return "redirect:/vendor";
	}

	@RequestMapping("/product")
	public String getProductById(@RequestParam("id") String productId, Model model, Principal principal) {
		model.addAttribute("product", productService.getProductById(Long.parseLong(productId)));
		if (principal != null) {
			model.addAttribute("customer", customerService.getCustomerByUserName(principal.getName()));
		}

		return "product";
	}
	
	@RequestMapping(value = "/deleteProduct", method = RequestMethod.GET)
	public String deleteProduct(@ModelAttribute Product product, @RequestParam("id") String id, Model model,
			Principal principal, RedirectAttributes redirectAttributes) {

		productService.deleteProducts(Long.parseLong(id));

		String name = principal.getName();

		List<Product> products = productService
				.getAllProductsByVendorId(vendorService.getVendorByUserName(name).getId());

		if (products.isEmpty()) {
			redirectAttributes.addFlashAttribute("emptylist", "true");
		}

		redirectAttributes.addFlashAttribute("products", products);

		return "redirect:/myProducts";
	}

	@ModelAttribute
	public void init(Model model, Principal principal, HttpSession session) {

		model.addAttribute("products", productService.findApprovedProducts());
		model.addAttribute("categories", categoryService.findAll());
		model.addAttribute("orderDetail", new OrderDetail());
		if (principal != null) {
			Admin admin = adminService.getAdminByUserName(principal.getName());
			if (admin != null) {
				model.addAttribute("account", admin);
			}

			Vendor vendor = vendorService.getVendorByUserName(principal.getName());
			if (vendor != null) {
				model.addAttribute("account", vendor);
			}

			Customer customer = customerService.getCustomerByUserName(principal.getName());
			if (customer != null) {
				session.setAttribute("canaddtocart", "true");
				model.addAttribute("account", customer);
			}
		}
	}
}
