package com.xianpin365.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xianpin365.constant.Constant;
import com.xianpin365.entity.News;
import com.xianpin365.service.INewsService;

@Controller
public class NewsController {

	@Resource
	private INewsService newsService;

	@RequestMapping("/news")
	public String getNewsList(HttpServletRequest request, Model model) {
		String reqUri = request.getRequestURI();
		List<News> newsList = newsService.getActivedNews();
		if(newsList==null || newsList.size()==0){
			return Constant.PAGE_NOT_FOUND;
		}
		model.addAttribute("newsList", newsList);
		return reqUri;
	}

	@RequestMapping("/news/{newsId}")
	public String getNewsDetail(@PathVariable String newsId, Model model) {
		Integer id = Integer.parseInt(newsId);
		News news = newsService.getById(id);
		if(news==null){
			return Constant.PAGE_NOT_FOUND;
		}
		model.addAttribute("news", news);
		return "news_detail";
	}

}
