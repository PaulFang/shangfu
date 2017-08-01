package com.xianpin365.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xianpin365.constant.Consts;
import com.xianpin365.domain.Language;
import com.xianpin365.entity.Qualification;
import com.xianpin365.service.IQualificationService;

@Controller
public class QualificationController {
	
	public static final String HONOR_VIEW_NAME = "honor";
	
	@Resource
	private IQualificationService qualificationService;
	
	@RequestMapping("/honor")
	public String getQualifications(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		Language lang = (Language)(session.getAttribute(Consts.VISTOR_LANGUAGE));
		String language = lang.getLanguage();
		List<Qualification> qualifications = qualificationService.getQualifications(true, language);
		model.addAttribute("qualifications", qualifications);
		return HONOR_VIEW_NAME;
	}
	
	
}
