package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

import com.bean.add_category_bean;
import com.connectio.connect;
import com.mysql.jdbc.PreparedStatement;

public class addworkercategorydao {

private static final PreparedStatement PreparedStatement = null;

	public void insertcategory(add_category_bean cb)
	{
		try
		{
			Connection cn = connect.sqlconnection();
					
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
			LocalDateTime now = LocalDateTime.now();
					
			String quary = "insert into worker_category(w_c_name,doi,dou,is_active) values(?,'"+dtf.format(now)+"', '"+dtf.format(now)+"', 1)";
			PreparedStatement ps = (PreparedStatement) cn.prepareStatement(quary);
			ps.setString(1, cb.getCategoryname());
			ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
			
	public List<add_category_bean> getAllWorkerCategory() throws SQLException
	{
		List<add_category_bean> list = new ArrayList<add_category_bean>();
			
		try
		{
			Connection con = connect.sqlconnection();
			String quary = "select * from worker_category where is_active='1' ";
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(quary);
			ResultSet rs = ps.executeQuery();
				
			while(rs.next())
			{
				add_category_bean cb = new add_category_bean();
				cb.setCategoryid(rs.getInt("w_cat_id"));
				cb.setCategoryname(rs.getString("w_c_name"));
				cb.setIsactive(rs.getInt("is_active"));
				list.add(cb);
			}
			rs.close();
			ps.close();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}
		
	public void deletecategory(add_category_bean acb){
		try{
			Connection cn = connect.sqlconnection();
			String quary = "update worker_category set is_active=? where w_cat_id=?";
			PreparedStatement ps = (PreparedStatement) cn.prepareStatement(quary);
			ps.setInt(1, 0);
			ps.setInt(2, acb.getCategoryid());
			ps.executeUpdate();
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
			
	public static add_category_bean getCategoeyById(int id){
		add_category_bean cb = new add_category_bean();
		try{
			Connection cn = connect.sqlconnection();
			String quary = "select * from worker_category where w_cat_id=?";
			PreparedStatement ps = (PreparedStatement) cn.prepareStatement(quary);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()){
				cb.setCategoryid(rs.getInt("w_cat_id"));
				cb.setCategoryname(rs.getString("w_c_name"));
			}
			else{
				cb = null;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return cb;
	}
			
	public void updatecategory(add_category_bean cb){
		try{
			Connection cn = connect.sqlconnection();
			String query = "update worker_category set w_c_name=? where w_cat_id=?";
			PreparedStatement ps = (PreparedStatement) cn.prepareStatement(query);
			ps.setString(1, cb.getCategoryname());
			ps.setInt(2, cb.getCategoryid());
			ps.executeUpdate();
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

}
