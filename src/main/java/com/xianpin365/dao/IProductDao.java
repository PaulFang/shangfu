package com.xianpin365.dao;

import java.util.List;

import com.xianpin365.pojo.Product;

public interface IProductDao {
	
	Product getById(Integer id);
	
	List<Product> getByStatus(boolean actived);
	
	int deleteByPrimaryKey(Integer id);

	int insert(Product record);

	int insertSelective(Product record);

	List<Product> getProducts();
	
	int updateByPrimaryKeySelective(Product record);

	int updateByPrimaryKey(Product record);

}
