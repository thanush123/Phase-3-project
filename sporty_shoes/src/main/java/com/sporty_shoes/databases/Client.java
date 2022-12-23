package com.sporty_shoes.databases;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class Client {

	public static void main(String[] args) {
		SessionFactory factory;
		Transaction tx;
		Session session;
		Configuration cfg = new Configuration();
		cfg = cfg.configure();
		factory = cfg.buildSessionFactory();
		session = factory.openSession();
		tx = session.beginTransaction();
		Admin admin=new Admin("Thanush", "thanush123");

		session.save(admin);

		tx.commit();
		session.close();
		factory.close();

	}

}
