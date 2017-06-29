package com.xianpin365.service;

import java.util.List;

import com.xianpin365.entity.Product;

public interface IProductService {
	
	void insertProduct(Product product);
	
	Product getById(int id);
	
	// 返回激活的产品并按 displayOrder大小升序排列
	List<Product> getProducts(boolean actived, String language);
	
	// 返回未激活的产品并按 displayOrder大小升序排列
	List<Product> getUnactivedProducts();
	
}
