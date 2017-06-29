package com.xianpin365.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xianpin365.entity.News;

public interface INewsDao {
	
	News getById(Integer id);
	
	List<News> getByStatus(@Param("actived") boolean actived, @Param("language") String language);
	
	int deleteByPrimaryKey(Integer id);

	int insert(News record);
	
}
