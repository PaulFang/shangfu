package com.xianpin365.service;

import com.xianpin365.pojo.News;

public interface INewsService {

	void insertNews(News record);
	
	News getById(int id);
	
}
