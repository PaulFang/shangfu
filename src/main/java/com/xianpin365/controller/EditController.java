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
import com.xianpin365.entity.CompanyProfile;
import com.xianpin365.entity.News;
import com.xianpin365.entity.PageCommonInfo;
import com.xianpin365.entity.Product;
import com.xianpin365.entity.Qualification;
import com.xianpin365.interceptor.GlobalInterceptor;
import com.xianpin365.service.ICompanyProfileService;
import com.xianpin365.service.INewsService;
import com.xianpin365.service.IPageCommonInfoService;
import com.xianpin365.service.IProductService;
import com.xianpin365.service.IQualificationService;

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
	
	@Resource
	private INewsService newsService;
	
	@Resource
	private ICompanyProfileService companyProfileService;
	
	
	@Resource
	private IQualificationService qualificationService;
	
	@RequestMapping(value = { "/edit/about" })
	public String doEditAbout() {
		return "edit_about";
	}

	@RequestMapping(value = { "/edit/addproduct" }, method = RequestMethod.GET)
	public String doAddProduct() {
		return "add_product";
	}
	
	@RequestMapping(value = { "/edit/toUpdateAbout" }, method = RequestMethod.POST)
	public @ResponseBody CompanyProfile getToEditProfile(String language) {
		CompanyProfile profile = companyProfileService.getByLanguage(language);
		return profile;
	}
	
	@RequestMapping(value = { "/edit/about/save" }, method = RequestMethod.POST)
	public @ResponseBody String saveProduct(CompanyProfile profile) {
		companyProfileService.updateProfile(profile);
		return "OK";
	}
	
	
	@RequestMapping(value = { "/edit/product" }, method = RequestMethod.GET)
	public String doEditProduct(Model model) {
		List<Product> products = prodService.getAll();
		model.addAttribute("products", products);
		return "edit_product";
	}
	
	@RequestMapping(value = { "/edit/toUpdateProduct" }, method = RequestMethod.POST)
	public @ResponseBody Product getToEditProduct(String id) {
		Product product = prodService.getById(Integer.parseInt(id));
		return product;
	}

	@RequestMapping(value = { "/edit/saveProduct" }, method = RequestMethod.POST)
	public @ResponseBody String saveProduct(Product product) {
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
		return "edit_contact";
	}
	
	@RequestMapping(value = { "/edit/contact/save" }, method = RequestMethod.POST)
	public @ResponseBody String saveContact(PageCommonInfo info) {
		pageCommonInfoService.update(info);
		return "OK";
	}
	
	@RequestMapping(value = { "/edit/toUpdateContact" }, method = RequestMethod.POST)
	public @ResponseBody PageCommonInfo doToUpdateContact(String language) {
		PageCommonInfo info = pageCommonInfoService.getByLanguage(language);
		return info;
	}
	
	@RequestMapping(value = { "/edit/honor" }, method = RequestMethod.GET)
	public String doEditHonor(HttpServletRequest request, Model model) {
		Language lang = GlobalInterceptor.getAccessorLanguage(request);
		PageCommonInfo info = pageCommonInfoService.getByLanguage(lang.getLanguage());
		List<Qualification> qualifications = qualificationService.getAll();
		model.addAttribute("info", info);
		model.addAttribute("qualifications", qualifications);
		return "edit_honor";
	}
	
	@RequestMapping(value = { "/edit/qualification/query" }, method = RequestMethod.POST)
	public @ResponseBody Qualification saveContact(String id) {
		Qualification qualification = qualificationService.getById(Integer.valueOf(id));
		return qualification;
	}
	
	@RequestMapping(value = { "/edit/saveQualification" }, method = RequestMethod.POST)
	public @ResponseBody String saveQualification(Qualification qualification) {
		qualificationService.save(qualification);
		return "OK";
	}
	
	@RequestMapping(value = { "/edit/news" })
	public String doEditNews(Model model) {
		List<News> newsList = newsService.getAll();
		model.addAttribute("newsList", newsList);
		return "edit_news";
	}
	
	@RequestMapping(value = { "/edit/news/toUpdateNews" })
	public @ResponseBody News getToUpdateNews(String id) {
		News news = newsService.getById(Integer.valueOf(id));
		return news;
	}
	
	
	@RequestMapping(value = { "/edit/news/save" }, method = RequestMethod.POST)
	public @ResponseBody String saveNews(HttpServletRequest request, News news) {
		return "Saved Successfully";
	}
	
}
