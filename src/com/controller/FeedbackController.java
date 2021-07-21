package com.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.dao.Feedbackdao;
import com.bean.Feedbackbean;
@WebServlet("/FeedbackController")
public class FeedbackController extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		HttpSession session = req.getSession();
		String action=req.getParameter("action");	
		if(action.equalsIgnoreCase("Submit"))
		{
			if(null == session.getAttribute("id"))
			{
				res.sendRedirect("userlogin.jsp");
			}	
			else
			{		
				Feedbackbean fb=new Feedbackbean();
				fb.setMail(req.getParameter("name"));
				fb.setName(req.getParameter("email"));
				fb.setFeedbackTopic(req.getParameter("topic"));
				fb.setFeedbackSatisfaction(req.getParameter("satisfaction"));
				fb.setFeedbackMessage(req.getParameter("message"));
				Feedbackdao fd=new Feedbackdao();
				fd.insertfeedback(fb);
				res.sendRedirect("user/index_user.jsp");
			}			
		}
		else if(action.equalsIgnoreCase("Submit..!"))
		{
			if(null == session.getAttribute("id"))
			{
				res.sendRedirect("worker/worker_login.jsp");
			}
			else
			{
				Feedbackbean fb=new Feedbackbean();
				fb.setMail(req.getParameter("name"));
				fb.setName(req.getParameter("email"));
				fb.setFeedbackTopic(req.getParameter("topic"));
				fb.setFeedbackSatisfaction(req.getParameter("satisfaction"));
				fb.setFeedbackMessage(req.getParameter("message"));
				Feedbackdao fd=new Feedbackdao();
				fd.insertworkerfeedback(fb);
				res.sendRedirect("worker/index_worker.jsp");
			}
		}
		else if(action.equalsIgnoreCase("Delete"))
		{
			int id=Integer.parseInt(req.getParameter("id"));		
			Feedbackdao fd=new Feedbackdao();
			fd.deleteFeedback(id);
			res.sendRedirect("admin/feedback_user.jsp");		
		}
		else if(action.equalsIgnoreCase("Delete..!"))
		{
			int id=Integer.parseInt(req.getParameter("id"));		
			Feedbackdao fd=new Feedbackdao();
			fd.deleteworkerFeedback(id);
			res.sendRedirect("admin/feedback_worker.jsp");		
		}
		else
		{
			res.sendRedirect("userlogin.jsp?msg=email Or Password Wrong..!");
		}
	}
}
