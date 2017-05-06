package com.xianpin365.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xianpin365.domain.Language;
import com.xianpin365.pojo.PageCommonInfo;
import com.xianpin365.service.IPageCommonInfoService;

@Controller
public class ContactController {

	@Resource
	private IPageCommonInfoService pageCommonInfoService;
	
	@RequestMapping("/contact")
	public String getNewsDetail(Model model) {
		PageCommonInfo info = pageCommonInfoService.getByLanguage(Language.ZH_CN.getLanguage());
		model.addAttribute("info", info);
		return "contact";
	}
	
}
