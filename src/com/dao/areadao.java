package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

import com.bean.areabean;
import com.connectio.connect;
import com.mysql.jdbc.PreparedStatement;

public class areadao {

		private static final PreparedStatement PreparedStatement = null;

		public void insertarea(areabean sb)
		{
			try
			{
				Connection cn = connect.sqlconnection();
				
				DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
				LocalDateTime now = LocalDateTime.now();
				
				String quary = "insert into area(area_name,doi,dou,is_active) values(?, '"+dtf.format(now)+"', '"+dtf.format(now)+"', 1)";
				PreparedStatement ps = (PreparedStatement) cn.prepareStatement(quary);
				ps.setString(1, sb.getAreaname());
				ps.executeUpdate();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		
		public List<areabean> getAllArea() throws SQLException
		{
			List<areabean> list = new ArrayList<areabean>();
			
			try
			{
				Connection con = connect.sqlconnection();
				String quary = "select * from area where is_active='1' ";
				PreparedStatement ps = (PreparedStatement) con.prepareStatement(quary);
				ResultSet rs = ps.executeQuery();
				
				while(rs.next())
				{
					areabean ab = new areabean();
					ab.setAreaid(rs.getInt("area_id"));
					ab.setAreaname(rs.getString("area_name"));
					ab.setIsactive(rs.getInt("is_active"));
					list.add(ab);
				}
				rs.close();
				ps.close();
			}
			catch(Exception e){
				e.printStackTrace();
			}
			return list;
		}
		
		public void deletearea(areabean ab){
			try{
					Connection cn = connect.sqlconnection();
					String quary = "update area set is_active=? where area_id=?";
					PreparedStatement ps = (PreparedStatement) cn.prepareStatement(quary);
					ps.setInt(1, 0);
					ps.setInt(2, ab.getAreaid());
					ps.executeUpdate();
			}
			catch(Exception e){
				e.printStackTrace();
			}
		}
		
		public areabean getAreaById(int id){
			areabean ab = new areabean();
			try{
				Connection cn = connect.sqlconnection();
				String quary = "select * from area where area_id=?";
				PreparedStatement ps = (PreparedStatement) cn.prepareStatement(quary);
				ps.setInt(1, id);
				ResultSet rs = ps.executeQuery();
				
				if(rs.next()){
					ab.setAreaid(rs.getInt("area_id"));
					ab.setAreaname(rs.getString("area_name"));
				}
				else{
					ab = null;
				}
			}
			catch(Exception e){
				e.printStackTrace();
			}
			return ab;
		}
		
		public void updateArea(areabean ab){
			try{
				Connection cn = connect.sqlconnection();
				String query = "update area set area_name=? where area_id=?";
				PreparedStatement ps = (PreparedStatement) cn.prepareStatement(query);
				ps.setString(1, ab.getAreaname());
				ps.setInt(2, ab.getAreaid());
				ps.executeUpdate();
			}
			catch(Exception e){
				e.printStackTrace();
			}
		}
}
