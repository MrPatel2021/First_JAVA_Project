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
import com.bean.worker_reg_bean;
import com.dao.EditProfileWorkerDao;
import com.dao.user_reg_dao;
import com.dao.worker_reg_dao;
@WebServlet("/EditProfileWorkerController")
@MultipartConfig(fileSizeThreshold=1024*1024*10,
maxFileSize=1024*1024*50,
maxRequestSize=1024*1024*100)

public class EditProfileWorkerController extends HttpServlet {
private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException{
		{
			String action= req.getParameter("action");
			if (action.equalsIgnoreCase("Edit Profile")) 
			{
				worker_reg_bean wb = new worker_reg_bean();
				wb.setwid(Integer.parseInt(req.getParameter("worker_id")));
				wb.setfname(req.getParameter("worker_fname"));
				wb.setlname(req.getParameter("worker_lname"));
				wb.setemail(req.getParameter("email"));
				wb.setphone(req.getParameter("phone_no"));
				wb.setaddress(req.getParameter("address"));
				/* ub.setprofile(req.getParameter("updateprofile")); */
				EditProfileWorkerDao wd = new EditProfileWorkerDao();
				wd.updateWorker(wb);
				res.sendRedirect("worker/worker_profile.jsp");
			}
			else if (action.equalsIgnoreCase("Change Password"))
			{
				worker_reg_bean wb = new worker_reg_bean();
				EditProfileWorkerDao wd = new EditProfileWorkerDao();
				wb.setwid(Integer.parseInt(req.getParameter("worker_id")));			
				String pwd = req.getParameter("updatenewpwd");
				wb.setpassword(pwd);
				String cnfrmpwd = req.getParameter("updatenewconfirmpwd");
				wb.setconpassword(cnfrmpwd);
				wd.updatePassword(wb);
				res.sendRedirect("worker/worker_profile.jsp");
			}
			else if(action.equalsIgnoreCase("Change Photo"))
			{
				Part part = req.getPart("photo");
				String path = req.getServletContext().getRealPath("/")+"\\uploaded_images\\"+part.getSubmittedFileName();
				part.write(path);
				worker_reg_bean wb = new worker_reg_bean();
				int wid = Integer.parseInt(req.getParameter("worker_id"));
				System.out.println("In Controller");
				wb.setwid(wid);
				wb.setprofile(part.getSubmittedFileName());
				EditProfileWorkerDao.updatePhoto(wb);
				res.sendRedirect("worker/worker_profile.jsp");
			}
	}
  }		
}
