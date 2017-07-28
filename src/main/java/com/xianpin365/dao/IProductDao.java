package com.xianpin365.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xianpin365.entity.Product;

public interface IProductDao {
	
	Product getById(Integer id);
	
	Product getByName(String name);
	
	List<Product> getByStatus(boolean actived);
	
	int deleteByPrimaryKey(Integer id);

	int insert(Product record);

	int insertSelective(Product record);
	
	List<Product> getProducts(@Param("actived") boolean actived, @Param("language") String language);
	
	int updateByPrimaryKeySelective(Product record);

	int updateByPrimaryKey(Product record);
	
	List<String> getAllProdNames();

	void updateProduct(Product product);
	
}
