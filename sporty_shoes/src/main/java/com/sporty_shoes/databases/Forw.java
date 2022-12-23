package com.sporty_shoes.databases;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Forw
 */
public class Forw extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		request.setAttribute("user_name", request.getParameter("user_name"));
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("checkout.jsp");
		requestDispatcher.forward(request, response);
	}

	

}
