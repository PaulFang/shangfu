package com.xianpin365.dao;

import java.util.List;

import com.xianpin365.entity.Qualification;

public interface IQualificationDao {

	Qualification getByName(String name);
	
	List<String> getNames();
}
