package com.myproject.onlineshop.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;


public interface ProductDAO {


	
	public boolean insertProductAction(Product p);
	
	
	public List<Product> listProduct();
	
}
