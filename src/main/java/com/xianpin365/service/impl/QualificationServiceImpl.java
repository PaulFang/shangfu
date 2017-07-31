package com.xianpin365.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xianpin365.dao.IQualificationDao;
import com.xianpin365.entity.Qualification;
import com.xianpin365.service.IQualificationService;

@Service("qualificationService")
public class QualificationServiceImpl implements IQualificationService {

	@Resource
	private IQualificationDao qualificationDao;

	@Override
	public Qualification getByName(String name) {
		return qualificationDao.getByName(name);
	}

	@Override
	public List<String> getNames() {
		return qualificationDao.getNames();
	}

}
