package com.xianpin365.service;

import com.xianpin365.entity.CompanyProfile;

public interface ICompanyProfileService {

	CompanyProfile getByLanguage(String language);
	
	void updateProfile(CompanyProfile profile);
	
}