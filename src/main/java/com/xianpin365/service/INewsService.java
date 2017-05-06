package com.xianpin365.service;

import java.util.List;

import com.xianpin365.pojo.News;

public interface INewsService {

	void insertNews(News record);
	
	News getById(int id);
	
	List<News> getActivedNews();
	
}
