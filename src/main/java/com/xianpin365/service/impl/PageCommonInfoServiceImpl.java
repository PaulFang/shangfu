package com.xianpin365.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xianpin365.dao.IPageCommonInfoDao;
import com.xianpin365.entity.PageCommonInfo;
import com.xianpin365.service.IPageCommonInfoService;

@Service("pageCommonInfoService")
public class PageCommonInfoServiceImpl implements IPageCommonInfoService {

	@Resource
	private IPageCommonInfoDao pageCommonInfoDao;

	@Override
	public PageCommonInfo getByLanguage(String language) {
		return pageCommonInfoDao.getByLanguage(language);
	}

	@Override
	public void update(PageCommonInfo info) {
		pageCommonInfoDao.update(info);
	}

}
