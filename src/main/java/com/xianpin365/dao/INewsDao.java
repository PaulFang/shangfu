package com.xianpin365.dao;

import com.xianpin365.pojo.News;

public interface INewsDao {
	
	News getById(Integer id);
	
	int deleteByPrimaryKey(Integer id);

	int insert(News record);
	
}
