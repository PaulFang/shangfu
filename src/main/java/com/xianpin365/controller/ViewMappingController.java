package com.xianpin365.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xianpin365.service.IProductService;

@Controller
public class ViewMappingController {
	
	@Resource
	private IProductService productService;
	
	
	@RequestMapping(value={"/index","/about","/honor", "/managerlogin","/managerlogin1"}, method=RequestMethod.GET)
	public String doDirectRequest(HttpServletResponse response,
            HttpServletRequest request) {
		String reqUri = request.getRequestURI();
		return reqUri;
	}
	
/*	
	@RequestMapping("/product/camelliaoil/{productId}")
	public String getCamelliaOilProductDetail(@PathVariable String productId, Model model) {
		
		Product product = productService.getById(1);
		model.addAttribute("product", product);
		return "product_detail";
	}
	
	@RequestMapping("/product/camelliaseed/{productId}")
	public String getCamelliaSeedProductDetail(@PathVariable String productId, Model model) {
		Integer id = Integer.getInteger(productId);
		Product product = productService.getById(id);
		model.addAttribute("product", product);
		return "product_detail";
	}
	
	@RequestMapping("/product/camelliaseedcake/{productId}")
	public String getCamelliaSeedCakeProductDetail(@PathVariable String productId, Model model) {
		Integer id = Integer.getInteger(productId);
		Product product = productService.getById(id);
		model.addAttribute("product", product);
		return "product_detail";
	}
	*/
}
