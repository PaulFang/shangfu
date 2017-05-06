package com.xianpin365.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class GlobalInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object controller){
		
		String language = req.getHeader("Accept-Language");
		String accessorHost = getAccessorHost(req);
		System.out.println(language);
		System.out.println(accessorHost);
		
		return true;
	}

	
	private String getAccessorHost(HttpServletRequest request){
		if (request.getHeader("x-forwarded-for") == null) { 
	        return request.getRemoteAddr(); 
	    } 
	    return request.getHeader("x-forwarded-for");  
	}
	
	
}
