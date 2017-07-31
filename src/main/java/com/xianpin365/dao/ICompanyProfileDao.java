package com.xianpin365.dao;

import com.xianpin365.entity.CompanyProfile;

public interface ICompanyProfileDao {
	
	CompanyProfile getByLanguage(String language);
	
	void updateProfile(CompanyProfile profile);
}
