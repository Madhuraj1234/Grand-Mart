package com.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.entities.Category;

public class CategoryDao {
	
	private SessionFactory factory;

	public CategoryDao(SessionFactory factory) {
		super();
		this.factory = factory;
	}
	
	public int saveCategory(Category cat)
	{
		Session session = this.factory.openSession();
		Transaction tx = session.beginTransaction();
		
		int catID = (Integer) session.save(cat);
				
		tx.commit();
		session.close();
		return catID;
		
	}

	
	public List<Category> getCategories()
	{
		Session  s = this.factory.openSession();
		Query query = s.createQuery("from Category");
		List<Category> list = query.list();
		return list;
	}
	
	public Category getCategoryByID(int cid)
	{
		Category cat = null;
		try {
			
			Session session = this.factory.openSession();
			cat = session.get(Category.class, cid);
			session.close();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cat;
		
	}
}
