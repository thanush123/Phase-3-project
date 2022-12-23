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
 * Servlet implementation class Ulogin_servlet
 */
public class Ulogin_servlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_name = request.getParameter("userid");
		String pass_word = request.getParameter("Upass");
		SessionFactory factory;
		Transaction tx;
		Session session;
		Configuration cfg = new Configuration();
		cfg = cfg.configure();
		factory = cfg.buildSessionFactory();
		session = factory.openSession();
		Query user_details = session.createQuery("from User");
		List<User> l_user=user_details.list();
		
		String msg="Incorrect Credentials or user dos not exsist";
		Boolean flag=false;
		User usr=null;
		for(User lu:l_user) {
			if(lu.getUserName().equals(user_name)) {
				if(lu.getPassword().equals(pass_word)) {
					flag=true;
				}
			}
		}
			if(flag) {
				request.setAttribute("user_name", user_name);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("home.jsp");
				requestDispatcher.forward(request, response);
				
			}
			else {
				PrintWriter pWriter=response.getWriter();
				pWriter.print("Wrong credentiald please try again");
			}
		}

}
