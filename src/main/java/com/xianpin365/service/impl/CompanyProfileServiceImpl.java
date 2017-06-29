package com.xianpin365.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xianpin365.dao.ICompanyProfileDao;
import com.xianpin365.entity.CompanyProfile;
import com.xianpin365.service.ICompanyProfileService;

@Service("companyProfileService")
public class CompanyProfileServiceImpl implements ICompanyProfileService {

	@Resource
	private ICompanyProfileDao companyProfileDao;

	@Override
	public CompanyProfile get(String language) {

		CompanyProfile profile = new CompanyProfile();
		profile.setLanguage("");
		profile.setProfileTxt("test.......");
		return companyProfileDao.getByLanguage(language);
	}

}
