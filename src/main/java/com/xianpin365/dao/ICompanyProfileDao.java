package com.xianpin365.dao;

import com.xianpin365.entity.CompanyProfile;

public interface ICompanyProfileDao {
	
	void insert(CompanyProfile record);
	
	CompanyProfile get(String language);
	
}
