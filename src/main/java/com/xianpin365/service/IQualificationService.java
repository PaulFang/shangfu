package com.xianpin365.service;

import java.util.List;

import com.xianpin365.entity.Qualification;

public interface IQualificationService {

	Qualification getByName(String name);
	
	Qualification getById(int id);

	List<String> getNames();
	
	List<Qualification> getAll();
	
	void save(Qualification qualification);
	
	List<Qualification> getQualifications(boolean actived, String language);
}
