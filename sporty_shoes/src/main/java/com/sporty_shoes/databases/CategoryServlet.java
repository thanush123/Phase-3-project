package com.sporty_shoes.databases;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CategoryServlet
 */
public class CategoryServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cname = request.getParameter("catName");
		Categories cat = new Categories();
		cat.setCategoryName(cname);
		Hibernate_Util hbUtil = new Hibernate_Util();
		hbUtil.conFig(cat);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("admin_home.jsp");
		requestDispatcher.forward(request, response);
	}

	
}
