package com.xianpin365.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xianpin365.domain.Language;
import com.xianpin365.entity.News;
import com.xianpin365.entity.PageCommonInfo;
import com.xianpin365.entity.Product;
import com.xianpin365.interceptor.GlobalInterceptor;
import com.xianpin365.service.IPageCommonInfoService;
import com.xianpin365.service.IProductService;

/**
 * 
 * 此类中所有的方法访问都需要校验admin登录
 *
 */
@Controller
public class EditController {
	
	@Resource
	private IPageCommonInfoService pageCommonInfoService;
	
	@Resource
	private IProductService prodService;
	
	
	@RequestMapping(value = { "/edit" }, method = RequestMethod.GET)
	public String doEditRequest() {
		return "login";
	}
	
	@RequestMapping(value = { "/edit/about" })
	public @ResponseBody String doEditAbout() {
		return "edit_about";
	}

	@RequestMapping(value = { "/edit/addproduct" }, method = RequestMethod.GET)
	public String doAddProduct() {
		return "add_product";
	}
	
	
	@RequestMapping(value = { "/edit/product" }, method = RequestMethod.GET)
	public String doEditProduct(Model model) {
		List<String> productNames = prodService.getAllProdNames();
		model.addAttribute("productNames", productNames);
		return "edit_product";
	}
	
	@RequestMapping(value = { "/edit/toUpdateProduct" }, method = RequestMethod.POST)
	public @ResponseBody Product getToEditProduct(String name) {
		Product product = prodService.getByName(name);
		return product;
	}

	@RequestMapping(value = { "/edit/saveProduct" }, method = RequestMethod.POST)
	public @ResponseBody String saveProduct(Product product) {
		
		System.out.println(product);
		prodService.updateProduct(product);
		return "OK";
	}
	
	@RequestMapping(value = { "/edit/updateproduct" }, method = RequestMethod.GET)
	public String doUpdateProduct(Model model) {
		List<String> productNames = prodService.getAllProdNames();
		model.addAttribute("productNames", productNames);
		return "update_product";
	}
	
	
	
	
	@RequestMapping(value = { "/edit/contact" }, method = RequestMethod.GET)
	public String doEditContact(HttpServletRequest request, Model model) {
		Language lang = GlobalInterceptor.getAccessorLanguage(request);
		PageCommonInfo info = pageCommonInfoService.getByLanguage(lang.getLanguage());
		model.addAttribute("info", info);
		return "edit_contact";
	}
	
	@RequestMapping(value = { "/edit/honor" }, method = RequestMethod.GET)
	public String doEditHonor(HttpServletRequest request, Model model) {
		Language lang = GlobalInterceptor.getAccessorLanguage(request);
		PageCommonInfo info = pageCommonInfoService.getByLanguage(lang.getLanguage());
		model.addAttribute("info", info);
//		model.addAttribute("honor", honor);
		return "edit_honor";
	}
	
	
	@RequestMapping(value = { "/edit/contact/save" }, method = RequestMethod.POST)
	public @ResponseBody String saveContact(HttpServletRequest request, PageCommonInfo info) {
		System.out.println(info);
		return "Saved Successfully";
	}
	
	@RequestMapping(value = { "/edit/news" })
	public @ResponseBody String doEditNews() {
		return "edit_news";
	}
	
	@RequestMapping(value = { "/edit/news/save" }, method = RequestMethod.POST)
	public @ResponseBody String saveNews(HttpServletRequest request, News news) {
		return "Saved Successfully";
	}
	
}
