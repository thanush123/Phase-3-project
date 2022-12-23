package com.sporty_shoes.databases;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserServlet
 */
public class UserServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("userId");
		String uphno = request.getParameter("userPhno");
		String uEmail = request.getParameter("userEmail");
		String upass = request.getParameter("password");
		String uaddress = request.getParameter("userAddress");

		User user = new User(uname, uphno, uaddress, uEmail, upass);

		Hibernate_Util hbUtil = new Hibernate_Util();
		hbUtil.conFig(user);

		RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
		requestDispatcher.forward(request, response);
		System.out.println(uname);
		System.out.println(uphno);
		System.out.println(uEmail);
		System.out.println(upass);
		System.out.println(uaddress);
	}

	

}
