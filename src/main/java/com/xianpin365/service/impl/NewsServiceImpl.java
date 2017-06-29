package com.xianpin365.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xianpin365.dao.INewsDao;
import com.xianpin365.entity.News;
import com.xianpin365.service.INewsService;

@Service("newsService")
public class NewsServiceImpl implements INewsService {

	@Resource
	private INewsDao newsDao;
	
	@Override
	public void insertNews(News record) {
	}

	@Override
	public News getById(int id) {
		return newsDao.getById(id);
	}

	@Override
	public List<News> getActivedNews(String language) {
		return newsDao.getByStatus(true, language);
	}

}
