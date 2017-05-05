package com.xianpin365.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xianpin365.pojo.Product;
import com.xianpin365.service.IProductService;
import com.xianpin365.service.IUserService;

@Controller
public class ViewMappingController {
	
	@Resource
	private IUserService userService;
	
	@Resource
	private IProductService productService;
	
	
	@RequestMapping(value={"/index","/about","/product","/honor","/news","/contact","new*"}, method=RequestMethod.GET)
	public String doAbout(HttpServletResponse response,
            HttpServletRequest request) {
		String reqUri = request.getRequestURI(); 
		
		Product obj = productService.getById(1);
		System.out.print(obj);
		return reqUri;
	}
	
	@RequestMapping("/product/{productId}")
	public String getProductDetail(@PathVariable String productId, Model model) {
		Integer id = Integer.parseInt(productId);
		Product product = productService.getById(id);
		model.addAttribute("product", product);
		return "product_detail";
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
