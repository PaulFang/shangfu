package com.xianpin365.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xianpin365.entity.Qualification;

public interface IQualificationDao {

	Qualification getByName(String name);
	
	List<String> getNames();
	
	Qualification getById(int id);
	
	List<Qualification> getAll();
	
	void updateQualification(Qualification q);
	
	List<Qualification> getQualifications(@Param("actived") boolean actived, @Param("language") String language);
}
