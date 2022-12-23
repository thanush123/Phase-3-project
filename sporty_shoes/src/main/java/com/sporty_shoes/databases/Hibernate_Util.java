package com.sporty_shoes.databases;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;



public class Hibernate_Util {
	SessionFactory factory;
	Transaction tx;
	Session session;
	public void conFig(Object obj) {
		try {
			Configuration cfg= new Configuration();
			cfg=cfg.configure();
			factory = cfg.buildSessionFactory();
			session = factory.openSession();
			tx = session.beginTransaction();
			session.save(obj);
			tx.commit();
			session.close();
			factory.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println("****Error Exist while inserting the data *****");
		}
	}
	
}
