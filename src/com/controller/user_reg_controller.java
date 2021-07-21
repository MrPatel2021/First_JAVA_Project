package com.controller;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.bean.user_reg_bean;
import com.dao.user_reg_dao;


@WebServlet("/user_reg_controller")
@MultipartConfig(fileSizeThreshold=1024*1024*10,
maxFileSize=1024*1024*50,
maxRequestSize=1024*1024*100)

public class user_reg_controller extends HttpServlet {
private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException{
		{
			String action= req.getParameter("action");
			if(action.equalsIgnoreCase("Register"))
			{
				user_reg_bean ub=new user_reg_bean();				
				ub.setfname(req.getParameter("user_fname"));
				ub.setlname(req.getParameter("user_lname"));
				ub.setemail(req.getParameter("email"));
				ub.setphone(req.getParameter("phone_no"));
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
				ub.setconpassword(req.getParameter("confirm_password"));
				user_reg_dao ud=new user_reg_dao();
				ud.insertu_regdata(ub);
				res.sendRedirect("user/userlogin.jsp");
				//req.getRequestDispatcher("user/userlogin.jsp").forward(req, res);
			}
			else if(action.equalsIgnoreCase("delete"))
			{
				int uid=Integer.parseInt(req.getParameter("uid"));
				user_reg_dao urd = new user_reg_dao();
				urd.delet_userdata(uid);
				res.sendRedirect("admin/view_user.jsp");
			}
			/*else if(action.equalsIgnoreCase("Edit"))
			{
				
				int uid=Integer.parseInt(req.getParameter("uid"));				
				res.sendRedirect("user/user_reg_update.jsp/?id="+uid);
				 
				int uid=Integer.parseInt(req.getParameter("uid"));
				System.out.println(uid);
				user_reg_bean urb = new user_reg_bean();
				user_reg_dao urd = new user_reg_dao();
				req.setAttribute("uid",urb);
				req.getRequestDispatcher("user_reg_update.jsp").forward(req, res);
				
			}
			else if(action.equalsIgnoreCase("update"))
			{
				user_reg_bean urb = new user_reg_bean();
				user_reg_dao urd = new user_reg_dao();
				urb.setuid(Integer.parseInt(req.getParameter("uid")));
				urb.setfname(req.getParameter("user_fname"));
				urb.setlname(req.getParameter("user_lname"));
				urb.setemail(req.getParameter("email"));
				urb.setphone(req.getParameter("phone_no"));
				urb.setaddress(req.getParameter("address"));
				urb.setarea(req.getParameter("area"));
				urb.setcity(req.getParameter("city"));
				urb.setstate(req.getParameter("state"));
				urb.setgender(Integer.parseInt(req.getParameter("gender")));
				//urb.setprofile(par);
				urb.setpassword(req.getParameter("password"));
				urb.setconpassword(req.getParameter("confirm_comfirm"));
				
				//urd.updateuser_data(urb);
				//req.getRequestDispatcher("viewu_reg.jsp").forward(req, res);
				
			}*/
		}
	}
}
