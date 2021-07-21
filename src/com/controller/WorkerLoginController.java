package com.controller;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.worker_reg_bean;
import com.dao.worker_reg_dao;

@WebServlet("/WorkerLoginController")
public class WorkerLoginController extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{     
		String action = req.getParameter("action");
		String email = req.getParameter("email");
		String pass = req.getParameter("password");
		int id=0;
		boolean status = worker_reg_dao.isValidWorker(email,pass);
		try
		{
			id = worker_reg_dao.getIdByEmail(email);
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		worker_reg_bean rb = worker_reg_dao.getWorkerById(id);
		
		if(action.equalsIgnoreCase("Login"))
		{
			if(status)
			{
				HttpSession session=req.getSession();
				session.setAttribute("email",email);
				session.setAttribute("id", rb.getwid());
				res.sendRedirect("worker/index_worker.jsp");
			}
			else
			{
				res.sendRedirect("user/workerlogin.jsp?msg=email Or Password Wrong..!");
			}
		}
		else
		{
			res.sendRedirect("user/workerlogin.jsp?msg=email Or Password Wrong..!");
		}
	}
}