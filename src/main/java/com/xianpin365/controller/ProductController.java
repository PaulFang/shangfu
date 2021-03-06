package com.xianpin365.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xianpin365.constant.Consts;
import com.xianpin365.domain.Language;
import com.xianpin365.entity.Product;
import com.xianpin365.service.IProductService;

@Controller
public class ProductController {

	public static final String PRODUCT_VIEW_NAME = "product";
	
	@Resource
	private IProductService productService;

	@RequestMapping("/product")
	public String getProductsPreview(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		Language lang = (Language)(session.getAttribute(Consts.VISTOR_LANGUAGE));
		String language = lang.getLanguage();
		List<Product> products = productService.getProducts(true, language);
		model.addAttribute("products", products);
		return PRODUCT_VIEW_NAME;
	}

	@RequestMapping("/product/{productId}")
	public String getProductDetail(HttpServletRequest request, @PathVariable String productId, Model model) {
		
		Integer id = null;
		try{
			id = Integer.parseInt(productId);
		}catch(NumberFormatException ex){
			// when request is /product/switchLanguage
			return handleSwitchLanguage(request, model);
		}
		Product product = productService.getById(id);
		
		if(product==null){
			return getProductsPreview(request, model);
		}
		
		model.addAttribute("product", product);
		return "product_detail";
	}
	
	private String handleSwitchLanguage(HttpServletRequest request, Model model){
		
		HttpSession session = request.getSession();
		Language lang = (Language)(session.getAttribute(Consts.VISTOR_LANGUAGE));
		String language = lang.getLanguage();
		List<Product> products = productService.getProducts(true, language);
		model.addAttribute("products", products);
		return PRODUCT_VIEW_NAME;
	}
	

}
