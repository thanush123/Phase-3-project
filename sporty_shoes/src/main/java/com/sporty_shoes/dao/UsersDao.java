package com.sporty_shoes.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.sporty_shoes.databases.Products;
import com.sporty_shoes.databases.User;

public class UsersDao {
	public List<User> allUsers(){
		  SessionFactory factory;
			Transaction tx;
			Session session;
			Configuration cfg = new Configuration();
			cfg = cfg.configure();
			factory = cfg.buildSessionFactory();
			session = factory.openSession();
			Query qu = session.createQuery("from User");
			List<User> uobj = qu.list();
		  return uobj;
		  
	  }
	
	  public List<User> requiresUser(String userna){
		  SessionFactory factory;
			Transaction tx;
			Session session;
			Configuration cfg = new Configuration();
			cfg = cfg.configure();
			factory = cfg.buildSessionFactory();
			session = factory.openSession();
			Query qu = session.createQuery("from User as p where p.userName=: id");
			qu.setParameter("id", userna);
			List<User> pobj = qu.list(); 
		  return pobj;
		  
	  }
}
