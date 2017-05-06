package com.xianpin365.dao;

import java.util.List;

import com.xianpin365.pojo.News;

public interface INewsDao {
	
	News getById(Integer id);
	
	List<News> getByStatus(boolean actived);
	
	int deleteByPrimaryKey(Integer id);

	int insert(News record);
	
}
