package com.sporty_shoes.databases;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Productservlet
 */
public class Productservlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String poname = request.getParameter("pName");
		int poprice = Integer.parseInt(request.getParameter("pPrice"));
		int poqua = Integer.parseInt(request.getParameter("pQua"));
		String cats = request.getParameter("categories");
		SessionFactory factory;
		Transaction tx;
		Session session;
		Configuration cfg = new Configuration();
		cfg = cfg.configure();
		factory = cfg.buildSessionFactory();
		session = factory.openSession();
		tx = session.beginTransaction();
		Query qu = session.createQuery("from Categories");

		Categories cmap = null;
		List<Categories> cobj = qu.list();
		for (Categories catog : cobj) {
			if (catog.getCategoryName().equals(cats)) {
				cmap = catog;
				break;
			}
		}

		Products pod = new Products(poname, poprice, poqua, cmap);

		List<Products> lProducts = new ArrayList<>();
		lProducts.add(pod);
		cmap.setProducts(lProducts);
		session.save(pod);
		session.save(cmap);

		tx.commit();
		session.close();
		factory.close();
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("admin_home.jsp");
		requestDispatcher.forward(request, response);
	}


}
