package com.xianpin365.service;

import com.xianpin365.pojo.Product;

public interface IProductService {
	
	void insertProduct(Product product);
	
	Product getById(int id);
	
}
