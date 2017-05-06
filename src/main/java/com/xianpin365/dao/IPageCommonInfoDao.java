package com.xianpin365.dao;

import com.xianpin365.pojo.PageCommonInfo;

public interface IPageCommonInfoDao {

	PageCommonInfo getByLanguage(String language);

}
