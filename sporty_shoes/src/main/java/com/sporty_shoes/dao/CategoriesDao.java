package com.sporty_shoes.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.sporty_shoes.databases.Categories;

public class CategoriesDao {
public List<Categories> allCategories(){
	SessionFactory factory;
	Transaction tx;
	Session session;
	Configuration cfg = new Configuration();
	cfg = cfg.configure();
	factory = cfg.buildSessionFactory();
	session = factory.openSession();
	Query qu = session.createQuery("from Categories");
	List<Categories> cobj = qu.list();
	return cobj;
}
}
