package com.xianpin365.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xianpin365.constant.Consts;
import com.xianpin365.domain.Language;
import com.xianpin365.entity.CompanyProfile;
import com.xianpin365.service.ICompanyProfileService;

@Controller
public class CompanyProfileController {

	@Resource
	private ICompanyProfileService service;

	@RequestMapping(value = { "/about" })
	public String getProfile(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		Language obj = (Language)session.getAttribute(Consts.VISTOR_LANGUAGE);
		String language = obj.getLanguage();
		CompanyProfile profile = service.getByLanguage(language);
		model.addAttribute("profile", profile);
		return request.getRequestURI();
	}

}

