package com.controller;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.bean.user_reg_bean;
import com.dao.user_reg_dao;
@WebServlet("/UserLoginController")
public class UserLoginController extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{     
		String action = req.getParameter("action");
		String email = req.getParameter("email");
		String pass = req.getParameter("password");
		
		int id=0;
		boolean status = user_reg_dao.isValidUser(email,pass);
		System.out.println(status);
		try
		{
			id = user_reg_dao.getIdByEmail(email);
			System.out.println("in controller id is : "+id);
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		user_reg_bean rb = user_reg_dao.getUserById(id);
		if(action.equalsIgnoreCase("Login"))
		{
			if(status)
			{
				HttpSession session= req.getSession(true);
				session.setAttribute("email",email);				
				session.setAttribute("id",id);
				res.sendRedirect("user/index_user.jsp");
			}
			else
			{
				res.sendRedirect("user/userlogin.jsp?msg=email Or Password Wrong..!");
			}
		}
		else
		{
			res.sendRedirect("user/userlogin.jsp?msg=email Or Password Wrong..!");
		}
	}
}