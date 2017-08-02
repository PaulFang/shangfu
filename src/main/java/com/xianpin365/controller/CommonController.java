package com.xianpin365.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xianpin365.constant.Consts;
import com.xianpin365.domain.Language;

@Controller
public class CommonController {

	public static final String OK = "OK";
	
	@RequestMapping("*switchLanguage")
	public @ResponseBody String switchLanguage(HttpServletRequest request) {
		// 将用户session的语言更改为其切换的新语言，然后成功返回后让前端刷新整个页面
		String lang = request.getParameter("language");
		HttpSession session = request.getSession();
		session.setAttribute(Consts.VISTOR_LANGUAGE, Language.parse(lang));
		return OK;
	}
	
}
