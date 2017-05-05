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
	
	@RequestMapping("pro_detail_1")
	public String getProduct(HttpServletRequest request, Model model) {
		model.addAttribute("spec", "xxxxx");
		String reqUri = request.getRequestURI();
		return reqUri;
	}
	
	@RequestMapping("/product/camelliaoil/{productId}")
	public String getProduct(@PathVariable String productId, Model model) {
		
		System.out.println("productId = " + productId);
		
//		String reqUri = request.getRequestURI();
		return "pro_detail_1";
	}
	
}
