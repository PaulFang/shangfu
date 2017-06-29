package com.xianpin365.service;

import com.xianpin365.entity.CompanyProfile;

public interface ICompanyProfileService {
	
	void insert(CompanyProfile record);
	
	CompanyProfile get(String language);
	
}