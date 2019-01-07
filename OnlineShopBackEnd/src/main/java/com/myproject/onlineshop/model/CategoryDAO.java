package com.myproject.onlineshop.model;

import java.util.List;


public interface CategoryDAO {

	
	public boolean addCategory(Category c);
	public List<Category> listCategory();
	public Category findById(int id);
	
}
