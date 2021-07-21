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
import com.dao.EditProfileUserDao;
import com.dao.user_reg_dao;
@WebServlet("/EditProfileUserController")
@MultipartConfig(fileSizeThreshold=1024*1024*10,
maxFileSize=1024*1024*50,
maxRequestSize=1024*1024*100)

public class EditProfileUserController extends HttpServlet {
private static final long serialVersionUID = 1L;	
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException{
		{
			String action= req.getParameter("action");
			if (action.equalsIgnoreCase("Edit Profile")) 
			{
				user_reg_bean ub = new user_reg_bean();
				ub.setuid(Integer.parseInt(req.getParameter("user_id")));
				ub.setfname(req.getParameter("user_fname"));
				ub.setlname(req.getParameter("user_lname"));
				ub.setemail(req.getParameter("email"));
				ub.setphone(req.getParameter("phone_no"));
				ub.setaddress(req.getParameter("address"));
				/* ub.setprofile(req.getParameter("updateprofile")); */
				EditProfileUserDao wd = new EditProfileUserDao();
				wd.updateUser(ub);
				res.sendRedirect("user/user_profile.jsp");
			}
			else if (action.equalsIgnoreCase("Change Password"))
			{
				user_reg_bean ub = new user_reg_bean();
				EditProfileUserDao wd = new EditProfileUserDao();
				ub.setuid(Integer.parseInt(req.getParameter("user_id")));			
				String pwd = req.getParameter("updatenewpwd");
				ub.setpassword(pwd);
				String cnfrmpwd = req.getParameter("updatenewconfirmpwd");
				ub.setconpassword(cnfrmpwd);
				wd.updatePassword(ub);
				res.sendRedirect("user/user_profile.jsp");
			}
			else if(action.equalsIgnoreCase("Change Photo"))
			{
				Part part = req.getPart("photo");
				String path = req.getServletContext().getRealPath("/")+"\\uploaded_images\\"+part.getSubmittedFileName();
				part.write(path);
				user_reg_bean ub = new user_reg_bean();
				int uid = Integer.parseInt(req.getParameter("user_id"));
				ub.setuid(uid);
				ub.setprofile(part.getSubmittedFileName());
				EditProfileUserDao.updatePhoto(ub);
				res.sendRedirect("user/user_profile.jsp");
			}
		}
	}
}

