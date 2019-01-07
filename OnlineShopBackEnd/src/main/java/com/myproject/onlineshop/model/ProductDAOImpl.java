package com.myproject.onlineshop.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAOImpl implements ProductDAO{
	private DBConfig b1;
	public Transaction trans;
	public Session  sess;
	
	public boolean insertProductAction(Product p)
	{
		try
		{
			DBConfig db=new DBConfig();
			sess=db.getSess();
			trans=sess.beginTransaction();
			sess.save(p);
			trans.commit();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return true;
	}
	
	public List<Product> listProduct()
	{
		List<Product> plist=null;
		try
		{
			DBConfig db=new DBConfig();
			sess=db.getSess();
			trans=sess.beginTransaction();
			Query query=sess.createQuery("from Product");
			plist=query.list();
			System.out.println("size of plist : "+plist.size());
			trans.commit();		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return plist;
	}

}
