package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import com.bean.user_reg_bean;
import com.connectio.connect;

public class user_reg_dao {
	public static void updateNewPassword(user_reg_bean ab) 
	{
		try
		{
			Connection cn= com.connectio.connect.sqlconnection();
			String query="update user_registration set password=?, confirm_password=? where email=?";
			PreparedStatement ps=(PreparedStatement) cn.prepareStatement(query);
			ps.setString(1,ab.getpassword());
			ps.setString(2, ab.getconpassword());
			ps.setString(3,ab.getemail());
			ps.executeUpdate();
			cn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public void insertu_regdata(user_reg_bean ub)
	{
		try
		{
			Connection cn= connect.sqlconnection();
			
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
			LocalDateTime now = LocalDateTime.now();
			
			
			String query="insert into user_registration(user_fname,user_lname,email,phone_no,address,area_id,city,state,gender,profile,password,confirm_password,doi,dou,isactive) values(?,?,?,?,?,?,?,?,?,?,?,?, '"+dtf.format(now)+"', '"+dtf.format(now)+"', 1)";
			PreparedStatement ps=(PreparedStatement)cn.prepareStatement(query);
			ps.setString(1, ub.getfname());
			ps.setString(2, ub.getlname());
			ps.setString(3, ub.getemail());
			ps.setString(4, ub.getphone());
			ps.setString(5, ub.getaddress());
			ps.setString(6, ub.getarea());
			ps.setString(7, ub.getcity());
			ps.setString(8, ub.getstate());
			ps.setInt(9, ub.getgender());
			ps.setString(10, ub.getprofile());
			ps.setString(11, ub.getpassword());
			ps.setString(12, ub.getconpassword());
			ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public List<user_reg_bean> getAlldata() throws SQLException
	{
		
		List<user_reg_bean> list = new ArrayList<user_reg_bean>();
		try
		{
		Connection con= connect.sqlconnection();
		String query="SELECT * FROM user_registration INNER JOIN `area` ON user_registration.`area_id` = area.`area_id` WHERE isactive=1";		
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
		ResultSet re=ps.executeQuery();
		while(re.next())
		{
			user_reg_bean ub=new user_reg_bean();
			ub.setuid(re.getInt("user_id"));
			ub.setfname(re.getString("user_fname"));
			ub.setlname(re.getString("user_lname"));
			ub.setemail(re.getString("Email"));
			ub.setphone(re.getString("phone_no"));
			ub.setaddress(re.getString("address"));
			ub.setarea(re.getString("area_name"));
			ub.setcity(re.getString("city"));
			ub.setstate(re.getString("state"));
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
	public void delet_userdata(int uid)
	{
		try
		{
			Connection con= connect.sqlconnection();
			String query="UPDATE user_registration set isactive=0 WHERE user_id=?";
			//String str="delete from user_registration where user_id=?"; HARD DELETE QUERY
			PreparedStatement ps= con.prepareStatement(query);
			ps.setInt(1,uid);
			ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public static user_reg_bean getuserdatabyid(int uid)
	{
		user_reg_bean ub=new user_reg_bean();
		try
		{
			Connection con= connect.sqlconnection(); 
			String str="select * from user_registration where user_id=?";
			PreparedStatement ps=(PreparedStatement)con.prepareStatement(str);
			ps.setInt(1,uid);
			ResultSet re=ps.executeQuery();
			if(re.next())
			{
				ub.setuid(re.getInt("user_id"));
				ub.setfname(re.getString("user_fname"));
				ub.setlname(re.getString("user_lname"));
				ub.setemail(re.getString("email"));
				ub.setphone(re.getString("phone_no"));
				ub.setaddress(re.getString("address"));
				ub.setarea(re.getString("area_id"));
				ub.setcity(re.getString("city"));
				ub.setstate(re.getString("state"));
				ub.setgender(re.getInt("gender"));
				ub.setprofile(re.getString("profile"));
				ub.setpassword(re.getString("password"));
				ub.setconpassword(re.getString("confirm_password"));
			}
			else
			{
				ub=null;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ub;
	}
	/*public void updateuser_data(user_reg_bean ub)
	{
		try
		{
			Connection con= connect.sqlconnection(); 
			String str="update user_registration set user_fname=?,user_lname=?,email=?,phone_no=?,address=?,area=?,city=?,state=?,gender=?,profile=?,password=?,confirm_password=? where uid=?";
			PreparedStatement ps=(PreparedStatement) con.prepareStatement(str);
			ps.setString(1, ub.getfname());
			ps.setString(2, ub.getlname());
			ps.setString(3, ub.getemail());
			ps.setString(4, ub.getphone());
			ps.setString(5, ub.getaddress());
			ps.setString(6, ub.getarea());
			ps.setString(7, ub.getcity());
			ps.setString(8, ub.getstate());
			ps.setInt(9, ub.getgender());
			ps.setString(10, ub.getprofile());
			ps.setString(11, ub.getpassword());
			ps.setString(12, ub.getconpassword());
			ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}*/
	public static boolean isValidUser(String email,String password)
	{
		try
		{
			Connection cn=connect.sqlconnection();
			String query="SELECT * FROM user_registration WHERE email='"+email+"' AND password='"+password+"'";
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
		String query="select * from user_registration where email='"+email+"'";
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			System.out.println("User id : "+rs.getInt("user_id"));
		   return rs.getInt("user_id");
		}
		return 0;
	}
	
	public static user_reg_bean getUserById(int id)
	{
	  try
	  {
		  Connection cn=connect.sqlconnection();
		  String query="select * from user_registration where user_id=?";
		  PreparedStatement ps=(PreparedStatement)cn.prepareStatement(query);
		  ps.setInt(1, id);
		  ResultSet rs=ps.executeQuery();
		  if(rs.next())
		  {
			  user_reg_bean rb=new user_reg_bean();			  
			  rb.setuid(rs.getInt("user_id"));
			  rb.setfname(rs.getString("user_fname"));
			  rb.setlname(rs.getString("user_lname"));
			  rb.setemail(rs.getString("email"));
			  rb.setphone(rs.getString("phone_no"));
			  rb.setaddress(rs.getString("address"));
			  rb.setarea(rs.getString("area_id")); /*area_name*/
			  rb.setcity(rs.getString("city"));
			  rb.setstate(rs.getString("state"));
			  rb.setgender(rs.getInt("gender"));
			  rb.setprofile(rs.getString("profile"));
			  rb.setpassword(rs.getString("password"));
			  rb.setconpassword(rs.getString("confirm_password"));
			  
			  return rb;
		  }
	  }
	  catch(Exception e)
	  {
		  e.printStackTrace();
	  }
	  return null;
	}

}
