package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.add_category_bean;
import com.bean.add_sub_admin_bean;
import com.bean.areabean;
import com.dao.add_sub_admin_dao;
import com.dao.addworkercategorydao;
import com.dao.areadao;

/**
 * Servlet implementation class AddCategoryController
 */
@WebServlet("/AddCategoryController")
public class AddCategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
String action = req.getParameter("action"); /* Name Of Button Of add_stste */
		
		if(action.equalsIgnoreCase("submit")) /* Value Of Button Of add_stste */
		{
			add_category_bean acb = new add_category_bean();
			acb.setCategoryname(req.getParameter("categoryname"));
			
			addworkercategorydao awd = new addworkercategorydao();
			awd.insertcategory(acb);
			res.sendRedirect("admin/view_worker_category.jsp");
			//req.getRequestDispatcher("view_worker_category.jsp").forward(req,res);
		}
		else if(action.equalsIgnoreCase("delete")){
			add_category_bean acb = new add_category_bean();
			acb.setCategoryid(Integer.parseInt(req.getParameter("id")));
			addworkercategorydao wcd = new addworkercategorydao();
			wcd.deletecategory(acb);
			res.sendRedirect("admin/view_worker_category.jsp");
			//req.getRequestDispatcher("view_worker_category.jsp").forward(req, res);
		}
		else if(action.equalsIgnoreCase("edit")){
			int id = Integer.parseInt(req.getParameter("id"));
			res.sendRedirect("admin/edit_worker_category.jsp?id=" + id); /* Old True Code */
			
			/*String id = req.getParameter("id").trim();
			int aid = Integer.parseInt(id);
			addworkercategorydao ad = new addworkercategorydao();
			add_category_bean ab = ad.getCategoeyById(aid);
			req.setAttribute("id", ab);
			res.sendRedirect("admin/edit_worker_category.jsp?id=" + id);*/ /* New True Code */
		}
		else if(action.equalsIgnoreCase("update")){
			add_category_bean acb = new add_category_bean();
			acb.setCategoryid(Integer.parseInt(req.getParameter("id")));
			acb.setCategoryname(req.getParameter("updatecategory"));
			addworkercategorydao wcd = new addworkercategorydao();
			wcd.updatecategory(acb);
			res.sendRedirect("admin/view_worker_category.jsp");
			//req.getRequestDispatcher("view_worker_category.jsp").forward(req, res);
		}
	}

}
