package com.xianpin365.service;

import java.util.List;

import com.xianpin365.entity.Qualification;

public interface IQualificationService {

	Qualification getByName(String name);

	List<String> getNames();
	
	void save(Qualification qualification);
	
	List<Qualification> getQualifications(boolean actived, String language);
}
