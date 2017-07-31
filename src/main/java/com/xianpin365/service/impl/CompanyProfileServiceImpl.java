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
	public CompanyProfile getByLanguage(String language) {
		return companyProfileDao.getByLanguage(language);
	}

	@Override
	public void updateProfile(CompanyProfile profile) {
		companyProfileDao.updateProfile(profile);
	}

}
