package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.areabean;
import com.dao.areadao;

/**
 * Servlet implementation class stateController
 */
@WebServlet("/AreaController")
public class AreaController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String action = req.getParameter("action"); /* Name Of Button Of add_stste */
		
		if(action.equalsIgnoreCase("submit")) /* Value Of Button Of add_stste */
		{
			areabean area = new areabean();
			area.setAreaname(req.getParameter("addarea"));
			
			areadao ad = new areadao();
			ad.insertarea(area);
			res.sendRedirect("admin/view_area.jsp");
			//req.getRequestDispatcher("admin/view_area.jsp").forward(req,res);
		}
		else if(action.equalsIgnoreCase("delete")){
			areabean ab = new areabean();
			ab.setAreaid(Integer.parseInt(req.getParameter("id")));
			areadao ad = new areadao();
			ad.deletearea(ab);
			res.sendRedirect("admin/view_area.jsp");
			//req.getRequestDispatcher("admin/view_area.jsp").forward(req, res);
		}
		else if(action.equalsIgnoreCase("edit")){
			int id = Integer.parseInt(req.getParameter("id"));
			areadao ad = new areadao();
			areabean ab = ad.getAreaById(id);
			req.setAttribute("id", ab);
			//res.sendRedirect("admin/edit_area.jsp");
			req.getRequestDispatcher("admin/edit_area.jsp").forward(req, res);
		}
		else if(action.equalsIgnoreCase("update")){
			areabean ab = new areabean();
			ab.setAreaid(Integer.parseInt(req.getParameter("id")));
			ab.setAreaname(req.getParameter("updatearea"));
			areadao ad = new areadao();
			ad.updateArea(ab);
			res.sendRedirect("admin/view_area.jsp");
			//req.getRequestDispatcher("admin/view_area.jsp").forward(req, res);
		}
	}

}
