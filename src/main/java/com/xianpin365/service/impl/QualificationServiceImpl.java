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

	@Override
	public void save(Qualification qualification) {
		qualificationDao.updateQualification(qualification);
	}

	@Override
	public List<Qualification> getQualifications(boolean actived, String language) {
		return qualificationDao.getQualifications(actived, language);
	}

	@Override
	public List<Qualification> getAll() {
		return qualificationDao.getAll();
	}

	@Override
	public Qualification getById(int id) {
		return qualificationDao.getById(id);
	}

}
