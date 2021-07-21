/* Admin Login Controller.... */

package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.add_sub_admin_bean;
import com.dao.add_sub_admin_dao;

@WebServlet("/AdminLogin")
public class LoginController extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse res)throws ServletException,IOException{
		
		String action = req.getParameter("action");
		String email = req.getParameter("email");
		String pass = req.getParameter("password");
		int id=0;
		boolean status = add_sub_admin_dao.isValidAdmin(email, pass);
		try
		{
			id = add_sub_admin_dao.getIdByEmail(email);
			System.out.println("in controller id is : "+id);
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		add_sub_admin_bean ab = add_sub_admin_dao.getSubAdminById(id);
		
		if(action.equalsIgnoreCase("submit"))
		{
			if(status)
			{
				HttpSession session=req.getSession();
				session.setAttribute("email",email);
				session.setAttribute("id", ab.getaid());
				res.sendRedirect("admin/index.jsp");
			}
			else
			{
				res.sendRedirect("admin/login.jsp?msg=email Or Password Wrong..!");
			}
		}
		else
		{
			res.sendRedirect("admin/login.jsp?msg=email Or Password Wrong..!");
		}
	}
}
