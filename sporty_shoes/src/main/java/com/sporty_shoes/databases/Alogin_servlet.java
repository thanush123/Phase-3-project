package com.sporty_shoes.databases;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class Alogin_servlet
 */
public class Alogin_servlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String aname=request.getParameter("adminid");
		String apass=request.getParameter("Apass");
		SessionFactory factory;
		Transaction tx;
		Session session;
		Configuration cfg = new Configuration();
		cfg = cfg.configure();
		factory = cfg.buildSessionFactory();
		session = factory.openSession();
		Query admin_details = session.createQuery("from Admin");
		List<Admin> ladmin=admin_details.list();
		if(ladmin.get(0).getAdmin_name().equals(aname) && ladmin.get(0).getAdmin_pass().equals(apass)) {
			
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("admin_home.jsp");
				requestDispatcher.forward(request, response);
		}
		else {
			PrintWriter pWriter=response.getWriter();
			pWriter.print("Wrong credentiald please try again");
		}

	}



}
