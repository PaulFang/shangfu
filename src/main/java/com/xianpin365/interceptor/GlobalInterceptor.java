package com.xianpin365.interceptor;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.xianpin365.constant.Consts;
import com.xianpin365.domain.Action;
import com.xianpin365.domain.Language;
import com.xianpin365.domain.VistorAction;
import com.xianpin365.entity.PageCommonInfo;
import com.xianpin365.service.IPageCommonInfoService;

public class GlobalInterceptor extends HandlerInterceptorAdapter {

	@Resource
	private IPageCommonInfoService pageCommonInfoService;
	
	private final static Map<Language, PageCommonInfo> LANG_PAGE_COMMON_INFO_MAP = new HashMap<Language, PageCommonInfo>();
	
	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object controller) {
		setVistorAction(req);
		if(checkEditPermission(req)){
			return true;
		}
		return false;
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

	private String getVistorHost(HttpServletRequest request) {
		if (request.getHeader("x-forwarded-for") == null) {
			return request.getRemoteAddr();
		}
		return request.getHeader("x-forwarded-for");
	}

	public static Language getAccessorLanguage(HttpServletRequest request){
		String lang = request.getHeader("Accept-Language");
		int commaIndex = lang.indexOf(",");
		Language language = Language.parse(lang.substring(0, commaIndex));
		if(language==null){
			return Language.ZH_CN;
		}
		return language;
	}
	
	private void setVistorAction(HttpServletRequest req){
		
		String url = req.getRequestURL().toString();
		if(isStaticResourceRequest(url)){
			return;
		}
		
		HttpSession session = req.getSession(true);
		Object obj = session.getAttribute(Consts.VISTOR_ACTION_TRACE_KEY);
		
		if(url.contains("managerlogin")){
			session.setAttribute("admin", true);
		}
		
		if(obj==null){
			VistorAction action = new VistorAction();
			action.setVistorHost(getVistorHost(req));
			action.setLanguage(getAccessorLanguage(req));
			action.setUserAgent(req.getHeader("User-Agent"));
			Action item = new Action();
			item.setRequestURL(url);
			item.setReferer(req.getHeader("Referer"));
			item.setTime(new Date());
			action.getActions().add(item);
			session.setAttribute(Consts.VISTOR_ACTION_TRACE_KEY, action);
		}else{
			VistorAction action = (VistorAction)obj;
			Action item = new Action();
			item.setRequestURL(url);
			item.setReferer(req.getHeader("Referer"));
			item.setTime(new Date());
			action.getActions().add(item);
		}
		
	}
	
	private boolean isStaticResourceRequest(String url){
		return (url.contains("/css") || url.contains("/js") || 
				url.contains("/picture")|| url.contains("/product_img") ||
				url.contains("/honor_img") || url.contains("/images"));
	}
	
	private boolean checkEditPermission(HttpServletRequest req){
		if(req.getRequestURL().toString().contains("/edit")){
			HttpSession session = req.getSession();
			if(session.getAttribute("admin")!=null){
				return true;
			}
			return false;
		}
		return true;
	}
	
}
