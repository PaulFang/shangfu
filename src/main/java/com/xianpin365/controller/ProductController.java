package com.xianpin365.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xianpin365.pojo.Product;
import com.xianpin365.service.IProductService;

@Controller
public class ProductController {

	@Resource
	private IProductService productService;
	
	@RequestMapping("/product")
	public String doAbout(HttpServletRequest request, Model model) {
		String reqUri = request.getRequestURI();
		List<Product> products = productService.getActivedProducts();
		model.addAttribute("products", products);
		return reqUri;
	}
	
	@RequestMapping("/product-dev")
	public String getProductsPreview(HttpServletRequest request, Model model) {
		String reqUri = request.getRequestURI();
		List<Product> products = productService.getActivedProducts();
		model.addAttribute("products", products);
		return reqUri;
	}
	
	@RequestMapping("/product/{productId}")
	public String getProductDetail(@PathVariable String productId, Model model) {
		Integer id = Integer.parseInt(productId);
		Product product = productService.getById(id);
		model.addAttribute("product", product);
		return "product_detail";
	}
	
}
