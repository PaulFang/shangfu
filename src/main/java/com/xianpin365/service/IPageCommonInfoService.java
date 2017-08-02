package com.xianpin365.service;

import com.xianpin365.entity.PageCommonInfo;

public interface IPageCommonInfoService {

	PageCommonInfo getByLanguage(String language);
	
	void update(PageCommonInfo info);

}
