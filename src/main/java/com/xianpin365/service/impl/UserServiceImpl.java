package com.xianpin365.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xianpin365.dao.IUserDao;
import com.xianpin365.pojo.User;
import com.xianpin365.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService {

	@Resource
	private IUserDao userDao;

	public User getUserById(int userId) {
		return this.userDao.selectByPrimaryKey(userId);
	}

}
