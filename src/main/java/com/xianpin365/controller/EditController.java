package com.xianpin365.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xianpin365.domain.Language;
import com.xianpin365.entity.PageCommonInfo;
import com.xianpin365.interceptor.GlobalInterceptor;
import com.xianpin365.service.IPageCommonInfoService;

@Controller
public class EditController {
	
	private PageCommonInfo info;
	
	@Resource
	private IPageCommonInfoService pageCommonInfoService;
	
	@RequestMapping(value = { "/edit" }, method = RequestMethod.GET)
	public String doEditRequest() {
		return "login";
	}

	@RequestMapping(value = { "/edit/addproduct" }, method = RequestMethod.GET)
	public String doAddProduct() {
		return "add_product";
	}
	
	@RequestMapping(value = { "/edit/contact" }, method = RequestMethod.GET)
	public String doEditContact(HttpServletRequest request, Model model) {
		Language lang = GlobalInterceptor.getAccessorLanguage(request);
		PageCommonInfo info = pageCommonInfoService.getByLanguage(lang.getLanguage());
		model.addAttribute("info", info);
		return "edit_contact";
	}
	
	@RequestMapping(value = { "/edit/contact/save" }, method = RequestMethod.POST)
	public @ResponseBody String saveContact(HttpServletRequest request, PageCommonInfo info) {
		
		System.out.println(info);
		return "Saved Successfully";
		
//		Language lang = GlobalInterceptor.getAccessorLanguage(request);
//		PageCommonInfo info = pageCommonInfoService.getByLanguage(lang.getLanguage());
//		model.addAttribute("info", info);
//		return "edit_contact";
	}
	
}
