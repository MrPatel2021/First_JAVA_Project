package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.bean.add_sub_admin_bean;
import com.bean.areabean;
import com.bean.book_worker_bean;
import com.bean.worker_reg_bean;
import com.dao.add_sub_admin_dao;
import com.dao.areadao;
import com.dao.book_worker_dao;
import com.dao.user_reg_dao;
import com.dao.worker_reg_dao;

@WebServlet("/book_worker_controller")
public class book_worker_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException{
		
			String action= req.getParameter("action");
			if(action.equalsIgnoreCase("Book Worker"))
			{
				book_worker_bean bw = new book_worker_bean();
				
				bw.setwid(req.getParameter("worker_id"));
				bw.setfname(req.getParameter("w_fname"));
				bw.setlname(req.getParameter("w_lname"));
				bw.setbdate(req.getParameter("date"));
				bw.setbtime(req.getParameter("time"));
				bw.setproblem(req.getParameter("problem"));
				
				book_worker_dao wd = new book_worker_dao();
				wd.insert_book_data(bw);
				
				
				/*int id = Integer.parseInt(req.getParameter("id"));
				worker_reg_dao wrd = new worker_reg_dao();
				worker_reg_bean wrb = wrd.getWorkerById(id);
				req.setAttribute("id", wrb);*/
				
				
				res.sendRedirect("user/index_user.jsp");
			}
			else if(action.equalsIgnoreCase("Book Worker!"))
			{
				book_worker_bean bw = new book_worker_bean();
				
				bw.setwid(req.getParameter("worker_id"));
				bw.setfname(req.getParameter("w_fname"));
				bw.setlname(req.getParameter("w_lname"));
				bw.setbdate(req.getParameter("date"));
				bw.setbtime(req.getParameter("time"));
				bw.setproblem(req.getParameter("problem"));
				
				book_worker_dao wd = new book_worker_dao();
				wd.insert_book_data(bw);

				res.sendRedirect("worker/index_worker.jsp");
			}
			
			else if(action.equalsIgnoreCase("Delete"))
			{
				int id=Integer.parseInt(req.getParameter("id"));
				book_worker_dao wd = new book_worker_dao();
				wd.delete_data(id);
				res.sendRedirect("admin/worker_booking_history.jsp");
			}
	}
}
