package com.xianpin365.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xianpin365.dao.IProductDao;
import com.xianpin365.entity.Product;
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

	@Override
	public List<Product> getActivedProducts() {
		return productDao.getByStatus(true);
	}
	
	@Override
	public List<Product> getUnactivedProducts(){
		return productDao.getByStatus(false);
	}

}
