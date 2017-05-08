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

	@RequestMapping(value = { "/index", "/about", "/honor", "/managerlogin",
			"/managerlogin1" }, method = RequestMethod.GET)
	public String doDirectRequest(HttpServletResponse response, HttpServletRequest request) {
		String reqUri = request.getRequestURI();
		return reqUri;
	}
	
	@RequestMapping(value = { "/ueditor" }, method = RequestMethod.GET)
	public String get(HttpServletResponse response, HttpServletRequest request) {
		String reqUri = request.getRequestURI();
		return reqUri;
	}

}
