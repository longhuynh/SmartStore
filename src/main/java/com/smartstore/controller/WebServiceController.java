package com.smartstore.controller;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONException;
import org.json.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.smartstore.domain.Product;
import com.smartstore.service.AdminService;
import com.smartstore.service.ProductService;

@RestController
public class WebServiceController {
	@Autowired
	private ProductService productService;

	@Autowired
	private AdminService adminService;

	@RequestMapping(value = "/product/approve", method = RequestMethod.POST)
	public void approvedProduct(HttpServletRequest request, Model model, @RequestBody String json) {
		JSONObject jsonObj;
		try {
			jsonObj = new JSONObject(json);
			Product newproduct = productService.find(Long.parseLong(jsonObj.getString("id")));
			newproduct.setApproval("approved");
			productService.save(newproduct);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@RequestMapping(value = "/product/disapprove", method = RequestMethod.POST)
	public void disapprovedProduct(HttpServletRequest request, Model model, @RequestBody String json) {
		JSONObject jsonObject;
		JSONParser jsonParser = new JSONParser();
		try {
			jsonObject = (JSONObject) jsonParser.parse(json);

			Product newproduct = productService.find(Long.parseLong(jsonObject.getString("id")));
			newproduct.setApproval("disapproved");
			productService.save(newproduct);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
