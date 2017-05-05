package com.xianpin365.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xianpin365.dao.IProductDao;
import com.xianpin365.pojo.Product;
import com.xianpin365.service.IProductService;

@Service("productService")
public class ProductServiceImp implements IProductService{

	@Resource
	private IProductDao productDao;
	
	@Override
	public void insertProduct(Product product) {
	}
	
	public Product getById(int id) {
		return productDao.getById(id);
	}

	

}
