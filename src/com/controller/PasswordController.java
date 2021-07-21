package com.controller;
import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.user_reg_bean;
import com.bean.worker_reg_bean;
import com.dao.user_reg_dao;
import com.dao.worker_reg_dao;
import com.mail.mailOrder;

@WebServlet("/PasswordController")
public class PasswordController extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		String action = req.getParameter("action");
		if(action.equalsIgnoreCase("Submit"))
		{
			String mail = req.getParameter("Email");
			String subject = "Your Password has been reset";
				 String body = "Hi User, \nThis is your new password: " ;			        
				 String newpwd= mailOrder.sendPasswordViaMail(mail,subject,body);
				 user_reg_bean ab=new user_reg_bean();		
				 ab.setemail(mail);				
				 ab.setpassword(newpwd);
				 ab.setconpassword(newpwd);
				 user_reg_dao.updateNewPassword(ab);
				 String message ="";
				 try 
				 {
					 System.out.println("password change");
			         message = "Your password has been reset. Please check your e-mail.";
			     }
				 catch (Exception ex) 
				 {
			          ex.printStackTrace();
			          message = "There were an error: " + ex.getMessage();
				 }
				 finally 
				 {
				 	res.sendRedirect("user/userlogin.jsp");
					/*req.getRequestDispatcher("user/userlogin.jsp").forward(req, res);*/
			     }
		}		
		else if(action.equalsIgnoreCase("Submit!"))
		{
			String mail = req.getParameter("Email");
			String subject = "Your Password has been reset";
				 String body = "Hi Worker, \nThis is your new password: " ;			        
				 String newpwd= mailOrder.sendPasswordViaMail(mail,subject,body);
				 worker_reg_bean ab = new worker_reg_bean();
				 ab.setemail(mail);				
				 ab.setpassword(newpwd);
				 ab.setconpassword(newpwd);
				 worker_reg_dao.updateNewPassword(ab);
				 String message ="";
				 try 
				 {
					 System.out.println("password change");
			         message = "Your password has been reset. Please check your e-mail.";
			     }
				 catch (Exception ex) 
				 {
			          ex.printStackTrace();
			          message = "There were an error: " + ex.getMessage();
				 }
				 finally 
				 {
				 	res.sendRedirect("user/workerlogin.jsp");
					/*req.getRequestDispatcher("user/userlogin.jsp").forward(req, res);*/
			     }
			}		
			else
			{
				System.out.println("Invalid Login");
				res.sendRedirect("user/userlogin.jsp");
				/*req.getRequestDispatcher("user/userlogin.jsp").forward(req, res);*/
			}
	}
}
