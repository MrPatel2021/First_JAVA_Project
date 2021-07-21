package com.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.dao.Contactusdao;
import com.bean.Contactbean;
@WebServlet("/ContactusController")
public class ContactusController extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		String action=req.getParameter("action");
		HttpSession session = req.getSession();
		if(action.equalsIgnoreCase("Send Your Message!"))
		{
				if(null == session.getAttribute("id"))
				{
					res.sendRedirect("user/userlogin.jsp");
				}	
				else
				{
					Contactbean cb=new Contactbean();
					cb.setName(req.getParameter("name"));
					cb.setEmail(req.getParameter("email"));
					cb.setMobile_no(req.getParameter("mobile_no"));
					cb.setMessage(req.getParameter("message"));
					Contactusdao cd=new Contactusdao();
					cd.insertcontactus(cb);					
					res.sendRedirect("user/index_user.jsp");
				}
		}
		else if(action.equalsIgnoreCase("Submit Your Message!"))
		{
				if(null == session.getAttribute("id"))
				{
					res.sendRedirect("user/workerlogin.jsp");
				}	
				else
				{
					Contactbean cb=new Contactbean();
					cb.setName(req.getParameter("name"));
					cb.setEmail(req.getParameter("email"));
					cb.setMobile_no(req.getParameter("mobile_no"));
					cb.setMessage(req.getParameter("message"));
					Contactusdao cd=new Contactusdao();
					cd.insertworkercontactus(cb);					
					res.sendRedirect("worker/index_worker.jsp");
				}
		}
		else if(action.equalsIgnoreCase("delete"))
		{
			int id=Integer.parseInt(req.getParameter("id"));			
			Contactusdao cd=new Contactusdao();
			cd.deletecontactus(id);	
			res.sendRedirect("admin/contact_us_user.jsp");
		}
		else if(action.equalsIgnoreCase("delete.!"))
		{
			int id=Integer.parseInt(req.getParameter("id"));			
			Contactusdao cd=new Contactusdao();
			cd.deleteworkercontactus(id);	
			res.sendRedirect("admin/contact_us_worker.jsp");
		}
	}
}
