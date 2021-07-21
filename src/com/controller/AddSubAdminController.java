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

import com.bean.add_sub_admin_bean;
import com.bean.areabean;
import com.dao.add_sub_admin_dao;
import com.dao.areadao;

@WebServlet("/AdminRegController")
@MultipartConfig(fileSizeThreshold=1024*1024*10,
maxFileSize=1024*1024*50,
maxRequestSize=1024*1024*100)

public class AddSubAdminController extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
		
		public void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException{
			{
				String action= req.getParameter("action");
				if(action.equalsIgnoreCase("Register"))
				{
					add_sub_admin_bean ub=new add_sub_admin_bean();				
					ub.setfname(req.getParameter("fname"));
					ub.setlname(req.getParameter("lname"));
					ub.setemail(req.getParameter("email"));
					ub.setphone(req.getParameter("phone_no"));
					ub.setaddress(req.getParameter("address"));
					ub.setarea(req.getParameter("admin_area"));
					ub.setcity(req.getParameter("city"));
					ub.setstate(req.getParameter("state"));
					ub.setcountry(req.getParameter("country"));
					ub.setgender(Integer.parseInt(req.getParameter("gender")));				
					Part part = req.getPart("profile");
					String path = req.getServletContext().getRealPath("/")+"\\uploaded_images\\"+part.getSubmittedFileName();
					part.write(path);				
					ub.setprofile(part.getSubmittedFileName());				
					ub.setpassword(req.getParameter("password"));
					ub.setconpassword(req.getParameter("confirm_password"));
				
					add_sub_admin_dao ud=new add_sub_admin_dao();
					ud.insert_admin(ub);
					res.sendRedirect("admin/view_sub_admin.jsp");
					//req.getRequestDispatcher("view_sub_admin.jsp").forward(req, res);
				}
				else if(action.equalsIgnoreCase("delete"))
				{
					int aid=Integer.parseInt(req.getParameter("aid"));
					add_sub_admin_dao asd = new add_sub_admin_dao();
					asd.delete_admin(aid);
					res.sendRedirect("admin/view_sub_admin.jsp");
				}
				
				else if(action.equalsIgnoreCase("edit")){
					String id=req.getParameter("aid").trim();
					int aid=Integer.parseInt(id);
					//int id = Integer.parseInt(req.getParameter("id"));
					add_sub_admin_dao ad = new add_sub_admin_dao();
					add_sub_admin_bean ab = ad.getSubAdminById(aid);
					req.setAttribute("id", ab);
					//res.sendRedirect("admin/edit_sub_admin.jsp");
					req.getRequestDispatcher("admin/edit_sub_admin.jsp").forward(req, res);
				}
				else if(action.equalsIgnoreCase("update")){
					add_sub_admin_bean ab = new add_sub_admin_bean();
					ab.setaid(Integer.parseInt(req.getParameter("id"))); //id
					ab.setfname(req.getParameter("updatefname"));
					ab.setlname(req.getParameter("updatelname"));
					ab.setemail(req.getParameter("updateemail"));
					ab.setphone(req.getParameter("updatephone_no"));
					ab.setaddress(req.getParameter("updateaddress"));
					ab.setarea(req.getParameter("updatearea"));
					ab.setcity(req.getParameter("updatecity"));
					ab.setstate(req.getParameter("updatestate"));
					ab.setcountry(req.getParameter("updatecountry"));
					ab.setgender(Integer.parseInt(req.getParameter("updategender")));
					Part part = req.getPart("updateprofile");
					String path = req.getServletContext().getRealPath("/")+"\\uploaded_images\\"+part.getSubmittedFileName();
					part.write(path);
					ab.setprofile(part.getSubmittedFileName());
					ab.setpassword(req.getParameter("updatepassword"));
					ab.setconpassword(req.getParameter("updateconfirm_password"));
					
					add_sub_admin_dao ad = new add_sub_admin_dao();
					ad.updateSubAdmin(ab);
					res.sendRedirect("admin/view_sub_admin.jsp");
					//req.getRequestDispatcher("admin/view_sub_admin.jsp").forward(req, res);
				}
				
			}
		}
}
