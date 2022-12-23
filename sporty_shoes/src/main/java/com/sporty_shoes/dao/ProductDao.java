package com.sporty_shoes.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.sporty_shoes.databases.Products;

public class ProductDao {
  public List<Products> allproducts(){
	  SessionFactory factory;
		Transaction tx;
		Session session;
		Configuration cfg = new Configuration();
		cfg = cfg.configure();
		factory = cfg.buildSessionFactory();
		session = factory.openSession();
		Query qu = session.createQuery("from Products");
		List<Products> pobj = qu.list();
	  return pobj;
	  
  }
  public List<Products> allproductscat(int ID){
	  SessionFactory factory;
		Transaction tx;
		Session session;
		Configuration cfg = new Configuration();
		cfg = cfg.configure();
		factory = cfg.buildSessionFactory();
		session = factory.openSession();
		Query qu = session.createQuery("from Products as p where p.categories.categoryId=: id");
		qu.setParameter("id", ID);
		List<Products> pobj = qu.list(); 
	  return pobj;
	  
  }
  
}
