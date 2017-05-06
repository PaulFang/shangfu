package com.xianpin365.interceptor;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.xianpin365.domain.Language;
import com.xianpin365.entity.PageCommonInfo;
import com.xianpin365.service.IPageCommonInfoService;

public class GlobalInterceptor extends HandlerInterceptorAdapter {

	@Resource
	private IPageCommonInfoService pageCommonInfoService;
	
	private final static Map<Language, PageCommonInfo> LANG_PAGE_COMMON_INFO_MAP = new HashMap<Language, PageCommonInfo>();
	
	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object controller) {
		String accessorHost = getAccessorHost(req);
		System.out.println(accessorHost);
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView mv) {
		if(mv!=null && mv.getModel()!=null && mv.getModel().get("info")==null){
			Language language = getAccessorLanguage(request);
			if(LANG_PAGE_COMMON_INFO_MAP.get(language)==null){
				PageCommonInfo comInfo = pageCommonInfoService.getByLanguage(language.getLanguage());
				LANG_PAGE_COMMON_INFO_MAP.put(language, comInfo);
			}
			PageCommonInfo info = LANG_PAGE_COMMON_INFO_MAP.get(language);
			mv.getModel().put("info", info);
		}
	}

	private String getAccessorHost(HttpServletRequest request) {
		if (request.getHeader("x-forwarded-for") == null) {
			return request.getRemoteAddr();
		}
		return request.getHeader("x-forwarded-for");
	}

	private Language getAccessorLanguage(HttpServletRequest request){
		String lang = request.getHeader("Accept-Language");
		int commaIndex = lang.indexOf(",");
		Language language = Language.parse(lang.substring(0, commaIndex));
		if(language==null){
			return Language.ZH_CN;
		}
		return language;
	}
	
}
