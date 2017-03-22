package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.Category;
@Repository
public class CategoryDaoImpl implements CategoryDao{
	public CategoryDaoImpl(){
		System.out.println("Intiating Category Dao");
	}
	
@Autowired
private SessionFactory sessionFactory;

	public List<Category> getCategories() {
	Session session= sessionFactory.openSession();
	Query query=session.createQuery("from Category");
    List<Category>categories=query.list();
    session.close();
    return categories;
	}
	

	

}
