package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.bean.worker_reg_bean;
import com.dao.user_reg_dao;
import com.dao.worker_reg_dao;


@WebServlet("/worker_reg_controller")
@MultipartConfig(fileSizeThreshold=1024*1024*10,
maxFileSize=1024*1024*50,
maxRequestSize=1024*1024*100)

public class worker_reg_controller extends HttpServlet {
private static final long serialVersionUID = 1L;

	
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException{
		{
			String action= req.getParameter("action");
			if(action.equalsIgnoreCase("Register"))
			{
				worker_reg_bean ub=new worker_reg_bean();
				
				ub.setfname(req.getParameter("worker_fname"));
				ub.setlname(req.getParameter("worker_lname"));
				ub.setemail(req.getParameter("email"));
				ub.setphone(req.getParameter("phone_number"));
				ub.setadharcard(req.getParameter("adharcard"));
				ub.setworkercategory(req.getParameter("workercategory"));
				ub.setaddress(req.getParameter("address"));
				ub.setarea(req.getParameter("selectarea"));
				ub.setcity(req.getParameter("city"));
				ub.setstate(req.getParameter("state"));
				ub.setgender(Integer.parseInt(req.getParameter("gender")));
				
				Part part = req.getPart("profile");
				String path = req.getServletContext().getRealPath("/")+"\\uploaded_images\\"+part.getSubmittedFileName();
				part.write(path);
				
				ub.setprofile(part.getSubmittedFileName());
				
				ub.setpassword(req.getParameter("password"));
				ub.setconpassword(req.getParameter("conpass"));
				worker_reg_dao ud=new worker_reg_dao();
				ud.insertw_regdata(ub);
				res.sendRedirect("user/workerlogin.jsp");
				//req.getRequestDispatcher("admin/view_worker.jsp").forward(req, res);
			}
			else if(action.equalsIgnoreCase("delete"))
			{
				worker_reg_dao wrd = new worker_reg_dao();
				int wid=Integer.parseInt(req.getParameter("wid"));
				wrd.delet_workerdata(wid);
				res.sendRedirect("admin/view_worker.jsp");
				//req.getRequestDispatcher("viewu_reg.jsp").forward(req, res);
			}
			else if(action.equalsIgnoreCase("getcategorybyid"))
			{
				int sid=Integer.parseInt(req.getParameter("categoryid"));
				res.sendRedirect("user/GetAllCategory.jsp?sid="+sid);
			}
			else if(action.equalsIgnoreCase("getcategorybyuserid"))
			{
				int sid=Integer.parseInt(req.getParameter("categoryid"));
				res.sendRedirect("user/GetAllCategoryForUser.jsp?sid="+sid);
			}
			else if(action.equalsIgnoreCase("getcategorybyworkerid"))
			{
				int sid=Integer.parseInt(req.getParameter("categoryid"));
				res.sendRedirect("worker/GetAllCategoryForWorker.jsp?sid="+sid);
			}
			/*else if(action.equalsIgnoreCase("Edit"))
			{
				int wid=Integer.parseInt(req.getParameter("wid"));
				System.out.println(wid);
				worker_reg_bean urb = new worker_reg_bean();
				worker_reg_dao urd = new worker_reg_dao();
				req.setAttribute("wid",urb);
				res.sendRedirect("user/user_reg_update.jsp");
				//req.getRequestDispatcher("reg_update.jsp").forward(req, res);
				
			}
			else if(action.equalsIgnoreCase("update"))
			{
				worker_reg_bean urb = new worker_reg_bean();
				worker_reg_dao urd = new worker_reg_dao();
				urb.setfname(req.getParameter("worker_fname"));
				urb.setlname(req.getParameter("worker_lname"));
				urb.setemail(req.getParameter("email"));
				urb.setphone(req.getParameter("phone_number"));
				urb.setadharcard(req.getParameter("adharcard"));
				urb.setworkercategory(req.getParameter("workercategory"));
				urb.setaddress(req.getParameter("address"));
				urb.setarea(req.getParameter("area_name"));
				urb.setcity(req.getParameter("city"));
				urb.setstate(req.getParameter("state"));
				urb.setgender(Integer.parseInt(req.getParameter("gender")));
				//urb.setprofile(par);
				urb.setpassword(req.getParameter("password"));
				urb.setconpassword(req.getParameter("conpass"));
				
				//urd.updateuser_data(urb);
				//req.getRequestDispatcher("viewu_reg.jsp").forward(req, res);
				
			}*/
		}
	}
}
