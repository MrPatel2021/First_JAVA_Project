package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import com.bean.add_sub_admin_bean;
import com.connectio.connect;
import com.mysql.jdbc.PreparedStatement;

public class add_sub_admin_dao {
	public void insert_admin(add_sub_admin_bean ub)
		{
			try
			{
				Connection cn= com.connectio.connect.sqlconnection();
				
				DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
				LocalDateTime now = LocalDateTime.now();
				
				String query="insert into sub_admin(a_fname,a_lname,email,phone_no,address,admin_area,city,state,country,gender,profile,password,confirm_password,doi,dou,is_active) values(?,?,?,?,?,?,?,?,?,?,?,?,?, '"+dtf.format(now)+"', '"+dtf.format(now)+"', 1)";
				PreparedStatement ps=(PreparedStatement)cn.prepareStatement(query);
				ps.setString(1, ub.getfname());
				ps.setString(2, ub.getlname());
				ps.setString(3, ub.getemail());
				ps.setString(4, ub.getphone());
				ps.setString(5, ub.getaddress());
				ps.setString(6, ub.getarea());
				ps.setString(7, ub.getcity());
				ps.setString(8, ub.getstate());
				ps.setString(9, ub.getcountry());
				ps.setInt(10, ub.getgender());
				ps.setString(11, ub.getprofile());
				ps.setString(12, ub.getpassword());
				ps.setString(13, ub.getconpassword());
				ps.executeUpdate();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
	
		public List<add_sub_admin_bean> getAlldata() throws SQLException
		{
			
			List<add_sub_admin_bean> list = new ArrayList<add_sub_admin_bean>();
			try
			{
			Connection con= connect.sqlconnection();
			String query="SELECT * FROM sub_admin WHERE is_active=1";		
			PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
			ResultSet re=ps.executeQuery();
			while(re.next())
			{
				add_sub_admin_bean ub=new add_sub_admin_bean();
				ub.setaid(re.getInt("a_id"));
				ub.setfname(re.getString("a_fname"));
				ub.setlname(re.getString("a_lname"));
				ub.setemail(re.getString("email"));
				ub.setphone(re.getString("phone_no"));
				ub.setaddress(re.getString("address"));
				ub.setarea(re.getString("admin_area"));
				ub.setcity(re.getString("city"));
				ub.setstate(re.getString("state"));
				ub.setcountry(re.getString("country"));
				ub.setgender(re.getInt("gender"));
				ub.setprofile(re.getString("profile"));
				ub.setpassword(re.getString("password"));
				ub.setconpassword(re.getString("confirm_password"));
				list.add(ub);
			}
			re.close();
			ps.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
		}
		public void delete_admin(int aid)
		{
			try
			{
				Connection con= connect.sqlconnection();
				String query="UPDATE sub_admin set is_active=0 WHERE a_id=?";
				PreparedStatement ps= (PreparedStatement) con.prepareStatement(query);
				ps.setInt(1,aid);
				ps.executeUpdate();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		
		public static add_sub_admin_bean getSubAdminById(int id){
			
			add_sub_admin_bean ab = new add_sub_admin_bean();
			
			try{
				Connection cn = connect.sqlconnection();
				String quary = "select * from sub_admin where a_id=?";
				PreparedStatement ps = (PreparedStatement) cn.prepareStatement(quary);
				ps.setInt(1, id);
				ResultSet rs = ps.executeQuery();
				
				if(rs.next()){
					ab.setaid(rs.getInt("a_id"));
					ab.setfname(rs.getString("a_fname"));
					ab.setlname(rs.getString("a_lname"));
					ab.setemail(rs.getString("email"));
					ab.setphone(rs.getString("phone_no"));
					ab.setaddress(rs.getString("address"));
					ab.setarea(rs.getString("admin_area"));
					ab.setcity(rs.getString("city"));
					ab.setstate(rs.getString("state"));
					ab.setcountry(rs.getString("country"));
					ab.setgender(rs.getInt("gender"));
					ab.setprofile(rs.getString("profile"));
					ab.setpassword(rs.getString("password"));
					ab.setconpassword(rs.getString("confirm_password"));
				}
				else{
					ab = null;
				}
				rs.close();
				ps.close();
				cn.close();
			}
			catch(Exception e){
				e.printStackTrace();
			}
			return ab;
		}
		
		public void updateSubAdmin(add_sub_admin_bean ab){
			try{
				Connection cn = connect.sqlconnection();
				String query = "update sub_admin set a_fname=?,a_lname=?,email=?,phone_no=?,address=?,admin_area=?,city=?,state=?,country=?,gender=?,profile=?,password=?,confirm_password=? where a_id=?";
				PreparedStatement ps = (PreparedStatement) cn.prepareStatement(query);
				ps.setString(1, ab.getfname());
				ps.setString(2, ab.getlname());
				ps.setString(3, ab.getemail());
				ps.setString(4, ab.getphone());
				ps.setString(5, ab.getaddress());
				ps.setString(6, ab.getarea());
				ps.setString(7, ab.getcity());
				ps.setString(8, ab.getstate());
				ps.setString(9, ab.getcountry());
				ps.setInt(10, ab.getgender());
				ps.setString(11, ab.getprofile());
				ps.setString(12, ab.getpassword());
				ps.setString(13, ab.getconpassword());
				
				ps.setInt(14,ab.getaid());
				
				ps.executeUpdate();
				cn.close();
			}
			catch(Exception e){
				e.printStackTrace();
			}
		}
		
		public static boolean isValidAdmin(String email,String password)
		{
			try
			{
				Connection cn = connect.sqlconnection();
				String query="SELECT * FROM sub_admin WHERE email='"+email+"' AND password='"+password+"'";
				PreparedStatement ps=(PreparedStatement) cn.prepareStatement(query);
				ResultSet rs=ps.executeQuery();
				if(rs.next())
				{
					return true;
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return false;
		}
		
		public static int getIdByEmail(String email) throws SQLException
		{
			Connection con=connect.sqlconnection();
			String query="select * from sub_admin where email='"+email+"'";
			PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
			   return rs.getInt("a_id");
			}
			return 0;
		}
		
		public static void updateProfile(add_sub_admin_bean ab) 
		{
			try
			{
				Connection cn = connect.sqlconnection();/*photo=?,*/
				String query="update sub_admin set a_fname=?, a_lname=?, email=?, phoneno=?, address=? where a_id=?";
				PreparedStatement ps=(PreparedStatement) cn.prepareStatement(query);
				ps.setString(1, ab.getfname());
				ps.setString(2, ab.getlname());
				ps.setString(3, ab.getemail());
				ps.setString(4, ab.getphone());
				ps.setString(5, ab.getaddress());			
				ps.setInt(6, ab.getaid());
				ps.executeUpdate();
				cn.close();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}	
		}
}
