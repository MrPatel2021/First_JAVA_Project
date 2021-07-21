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
import com.bean.worker_reg_bean;
import com.connectio.connect;

public class worker_reg_dao {
	public static void updateNewPassword(worker_reg_bean ab) 
	{
		try
		{
			Connection cn= com.connectio.connect.sqlconnection();
			String query="update worker_registration set password=?, confirm_password=? where email=?";
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
	public void insertw_regdata(worker_reg_bean ub)
	{
		try
		{
			Connection cn= com.connectio.connect.sqlconnection();
			
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
			LocalDateTime now = LocalDateTime.now();
			
			String query="insert into worker_registration(worker_fname,worker_lname,email,phone_no,adharcard,w_cat_id,address,area_id,city,state,gender,profile,password,confirm_password,doi,dou,isactive) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?, '"+dtf.format(now)+"', '"+dtf.format(now)+"', 1)";
			PreparedStatement ps=(PreparedStatement)cn.prepareStatement(query);
			ps.setString(1, ub.getfname());
			ps.setString(2, ub.getlname());
			ps.setString(3, ub.getemail());
			ps.setString(4, ub.getphone());
			ps.setString(5, ub.getadharcard());
			ps.setString(6, ub.getworkercategory());
			ps.setString(7, ub.getaddress());
			ps.setString(8, ub.getarea());
			ps.setString(9, ub.getcity());
			ps.setString(10, ub.getstate());
			ps.setInt(11, ub.getgender());
			ps.setString(12, ub.getprofile());
			ps.setString(13, ub.getpassword());
			ps.setString(14, ub.getconpassword());
			ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public List<worker_reg_bean> getAlldata() throws SQLException
	{
		
		List<worker_reg_bean> list = new ArrayList<worker_reg_bean>();
		try
		{
		Connection con= com.connectio.connect.sqlconnection();
		String query="SELECT * FROM worker_registration INNER JOIN `worker_category` ON worker_registration.`w_cat_id` = worker_category.`w_cat_id` INNER JOIN `area` ON worker_registration.`area_id` = area.`area_id` WHERE isactive=1";
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
		ResultSet re=ps.executeQuery();
		while(re.next())
		{
			worker_reg_bean ub=new worker_reg_bean();
			ub.setwid(re.getInt("worker_id"));
			ub.setfname(re.getString("worker_fname"));
			ub.setlname(re.getString("worker_lname"));
			ub.setemail(re.getString("Email"));
			ub.setphone(re.getString("phone_no"));
			ub.setadharcard(re.getString("adharcard"));
			ub.setworkercategory(re.getString("w_c_name"));
			ub.setaddress(re.getString("address"));
			ub.setarea(re.getString("area_id")); /*area_name*/
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
	
	public void delet_workerdata(int wid)
	{ 	 
		try
		
		{ 		
			Connection con= com.connectio.connect.sqlconnection();
			String str="update worker_registration set isactive=0 WHERE worker_id=?";
			PreparedStatement ps= con.prepareStatement(str);
			ps.setInt(1,wid);
			ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
	public static worker_reg_bean getuserdatabyid(int wid)
	{
		worker_reg_bean ub=new worker_reg_bean();
		try
		{
			Connection con= connect.sqlconnection(); 
			String str="select * from worker_registration where worker_id=?";
			PreparedStatement ps=(PreparedStatement)con.prepareStatement(str);
			ps.setInt(1,wid);
			ResultSet re=ps.executeQuery();
			if(re.next())
			{
				ub.setwid(re.getInt("worker_id"));
				ub.setfname(re.getString("worker_fname"));
				ub.setlname(re.getString("worker_lname"));
				ub.setemail(re.getString("email"));
				ub.setphone(re.getString("phone_no"));
				ub.setadharcard(re.getString("adharcard"));
				/*ub.setworkercategory(re.getString("w_c_name"));*/
				ub.setaddress(re.getString("address"));
				/*ub.setarea(re.getString("area_name"));*/
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
	/*public void updateworker_data(worker_reg_bean ub)
	{
		try
		{
			Connection con= com.connectio.connect.sqlconnection(); 
			String str="update worker_registration set worker_fname=?,worker_lname=?,email=?,phone_no=?,adharcard=?,w_cat_id=?,address=?,area_id=?,city=?,state=?,gender=?,profile=?,password=?,confirm_password=? where wid=?";
			PreparedStatement ps=(PreparedStatement) con.prepareStatement(str);
			ps.setString(1, ub.getfname());
			ps.setString(2, ub.getlname());
			ps.setString(3, ub.getemail());
			ps.setString(4, ub.getphone());
			ps.setString(5, ub.getadharcard());
			ps.setString(6, ub.getworkercategory());
			ps.setString(7, ub.getaddress());
			ps.setString(8, ub.getarea());
			ps.setString(9, ub.getcity());
			ps.setString(10, ub.getstate());
			ps.setInt(11, ub.getgender());
			ps.setString(12, ub.getprofile());
			ps.setString(13, ub.getpassword());
			ps.setString(14, ub.getconpassword());
			ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}*/
	public static boolean isValidWorker(String email,String password)
	{
		try
		{
			Connection cn=com.connectio.connect.sqlconnection();
			String query="SELECT * FROM worker_registration WHERE email='"+email+"' AND password='"+password+"'";
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
		Connection con=com.connectio.connect.sqlconnection();
		String query="select * from worker_registration where email='"+email+"'";
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			System.out.println("Worker id : "+rs.getInt("worker_id"));
			return rs.getInt("worker_id");
		}
		return 0;
	}
	
	public static worker_reg_bean getWorkerById(int id)
	{
	  try
	  {
		  Connection cn=com.connectio.connect.sqlconnection();
		  String query="select * from worker_registration where worker_id=?";
		  PreparedStatement ps=(PreparedStatement)cn.prepareStatement(query);
		  ps.setInt(1, id);
		  ResultSet rs=ps.executeQuery();
		  if(rs.next())
		  {
			  worker_reg_bean rb=new worker_reg_bean();
			  
			  rb.setwid(rs.getInt("worker_id"));
			  rb.setfname(rs.getString("worker_fname"));
			  rb.setlname(rs.getString("worker_lname"));
			  rb.setemail(rs.getString("email"));
			  rb.setphone(rs.getString("phone_no"));
			  rb.setadharcard(rs.getString("adharcard"));
			  rb.setaddress(rs.getString("address"));
			  rb.setarea(rs.getString("area_id"));
			  rb.setcity(rs.getString("city"));
			  rb.setstate(rs.getString("state"));
			  rb.setgender(rs.getInt("gender"));
			  rb.setprofile(rs.getString("profile"));
			  rb.setpassword(rs.getString("password"));
			  rb.setconpassword(rs.getString("confirm_password"));
			  
			  /*System.out.print(rb);*/
			  return rb;
		  }
	  }
	  catch(Exception e)
	  {
		  e.printStackTrace();
	  }
	  return null;
	}

	public List<worker_reg_bean> getWorkerByDriverID() throws SQLException
	{
		
		List<worker_reg_bean> list = new ArrayList<worker_reg_bean>();
		try
		{
		Connection con= connect.sqlconnection();
		String query="SELECT * FROM worker_registration INNER JOIN `worker_category` ON worker_registration.`w_cat_id` = worker_category.`w_cat_id` Where worker_category.`w_cat_id` = 10 ";
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
		ResultSet re=ps.executeQuery();
		while(re.next())
		{
			worker_reg_bean ub=new worker_reg_bean();
			ub.setwid(re.getInt("worker_id"));
			ub.setfname(re.getString("worker_fname"));
			ub.setlname(re.getString("worker_lname"));
			ub.setemail(re.getString("Email"));
			ub.setphone(re.getString("phone_no"));
			ub.setadharcard(re.getString("adharcard"));
			ub.setaddress(re.getString("address"));
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
	
	public List<worker_reg_bean> getWorkerByHousekeeperID() throws SQLException
	{
		
		List<worker_reg_bean> list = new ArrayList<worker_reg_bean>();
		try
		{
		Connection con= connect.sqlconnection();
		String query="SELECT * FROM worker_registration INNER JOIN `worker_category` ON worker_registration.`w_cat_id` = worker_category.`w_cat_id` Where worker_category.`w_cat_id` = 15 ";
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
		ResultSet re=ps.executeQuery();
		while(re.next())
		{
			worker_reg_bean ub=new worker_reg_bean();
			ub.setwid(re.getInt("worker_id"));
			ub.setfname(re.getString("worker_fname"));
			ub.setlname(re.getString("worker_lname"));
			ub.setemail(re.getString("Email"));
			ub.setphone(re.getString("phone_no"));
			ub.setadharcard(re.getString("adharcard"));
			ub.setaddress(re.getString("address"));
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
	
	public List<worker_reg_bean> getWorkerByMilkmanID() throws SQLException
	{
		
		List<worker_reg_bean> list = new ArrayList<worker_reg_bean>();
		try
		{
		Connection con= connect.sqlconnection();
		String query="SELECT * FROM worker_registration INNER JOIN `worker_category` ON worker_registration.`w_cat_id` = worker_category.`w_cat_id` Where worker_category.`w_cat_id` = 14 ";
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
		ResultSet re=ps.executeQuery();
		while(re.next())
		{
			worker_reg_bean ub=new worker_reg_bean();
			ub.setwid(re.getInt("worker_id"));
			ub.setfname(re.getString("worker_fname"));
			ub.setlname(re.getString("worker_lname"));
			ub.setemail(re.getString("Email"));
			ub.setphone(re.getString("phone_no"));
			ub.setadharcard(re.getString("adharcard"));
			ub.setaddress(re.getString("address"));
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
	
	public List<worker_reg_bean> getWorkerByChefID() throws SQLException
	{
		
		List<worker_reg_bean> list = new ArrayList<worker_reg_bean>();
		try
		{
		Connection con= connect.sqlconnection();
		String query="SELECT * FROM worker_registration INNER JOIN `worker_category` ON worker_registration.`w_cat_id` = worker_category.`w_cat_id` Where worker_category.`w_cat_id` = 12 ";
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
		ResultSet re=ps.executeQuery();
		while(re.next())
		{
			worker_reg_bean ub=new worker_reg_bean();
			ub.setwid(re.getInt("worker_id"));
			ub.setfname(re.getString("worker_fname"));
			ub.setlname(re.getString("worker_lname"));
			ub.setemail(re.getString("Email"));
			ub.setphone(re.getString("phone_no"));
			ub.setadharcard(re.getString("adharcard"));
			ub.setaddress(re.getString("address"));
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
	
	public List<worker_reg_bean> getWorkerByGardenerID() throws SQLException
	{
		
		List<worker_reg_bean> list = new ArrayList<worker_reg_bean>();
		try
		{
		Connection con= connect.sqlconnection();
		String query="SELECT * FROM worker_registration INNER JOIN `worker_category` ON worker_registration.`w_cat_id` = worker_category.`w_cat_id` Where worker_category.`w_cat_id` = 16";
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
		ResultSet re=ps.executeQuery();
		while(re.next())
		{
			worker_reg_bean ub=new worker_reg_bean();
			ub.setwid(re.getInt("worker_id"));
			ub.setfname(re.getString("worker_fname"));
			ub.setlname(re.getString("worker_lname"));
			ub.setemail(re.getString("Email"));
			ub.setphone(re.getString("phone_no"));
			ub.setadharcard(re.getString("adharcard"));
			ub.setaddress(re.getString("address"));
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

	public List<worker_reg_bean> getWorkerByWatchmanID() throws SQLException
	{
		
		List<worker_reg_bean> list = new ArrayList<worker_reg_bean>();
		try
		{
		Connection con= connect.sqlconnection();
		String query="SELECT * FROM worker_registration INNER JOIN `worker_category` ON worker_registration.`w_cat_id` = worker_category.`w_cat_id` Where worker_category.`w_cat_id` = 17";
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
		ResultSet re=ps.executeQuery();
		while(re.next())
		{
			worker_reg_bean ub=new worker_reg_bean();
			ub.setwid(re.getInt("worker_id"));
			ub.setfname(re.getString("worker_fname"));
			ub.setlname(re.getString("worker_lname"));
			ub.setemail(re.getString("Email"));
			ub.setphone(re.getString("phone_no"));
			ub.setadharcard(re.getString("adharcard"));
			ub.setaddress(re.getString("address"));
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
	
	public List<worker_reg_bean> getWorkerByWashermanID() throws SQLException
	{
		
		List<worker_reg_bean> list = new ArrayList<worker_reg_bean>();
		try
		{
		Connection con= connect.sqlconnection();
		String query="SELECT * FROM worker_registration INNER JOIN `worker_category` ON worker_registration.`w_cat_id` = worker_category.`w_cat_id` Where worker_category.`w_cat_id` = 18";
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
		ResultSet re=ps.executeQuery();
		while(re.next())
		{
			worker_reg_bean ub=new worker_reg_bean();
			ub.setwid(re.getInt("worker_id"));
			ub.setfname(re.getString("worker_fname"));
			ub.setlname(re.getString("worker_lname"));
			ub.setemail(re.getString("Email"));
			ub.setphone(re.getString("phone_no"));
			ub.setadharcard(re.getString("adharcard"));
			ub.setaddress(re.getString("address"));
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

	public List<worker_reg_bean> getWorkerByNusreID() throws SQLException
	{
		
		List<worker_reg_bean> list = new ArrayList<worker_reg_bean>();
		try
		{
		Connection con= connect.sqlconnection();
		String query="SELECT * FROM worker_registration INNER JOIN `worker_category` ON worker_registration.`w_cat_id` = worker_category.`w_cat_id` Where worker_category.`w_cat_id` = 19";
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
		ResultSet re=ps.executeQuery();
		while(re.next())
		{
			worker_reg_bean ub=new worker_reg_bean();
			ub.setwid(re.getInt("worker_id"));
			ub.setfname(re.getString("worker_fname"));
			ub.setlname(re.getString("worker_lname"));
			ub.setemail(re.getString("Email"));
			ub.setphone(re.getString("phone_no"));
			ub.setadharcard(re.getString("adharcard"));
			ub.setaddress(re.getString("address"));
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

	public List<worker_reg_bean> getWorkerByTeacherID() throws SQLException
	{
		
		List<worker_reg_bean> list = new ArrayList<worker_reg_bean>();
		try
		{
		Connection con= connect.sqlconnection();
		String query="SELECT * FROM worker_registration INNER JOIN `worker_category` ON worker_registration.`w_cat_id` = worker_category.`w_cat_id` Where worker_category.`w_cat_id` = 13";
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
		ResultSet re=ps.executeQuery();
		while(re.next())
		{
			worker_reg_bean ub=new worker_reg_bean();
			ub.setwid(re.getInt("worker_id"));
			ub.setfname(re.getString("worker_fname"));
			ub.setlname(re.getString("worker_lname"));
			ub.setemail(re.getString("Email"));
			ub.setphone(re.getString("phone_no"));
			ub.setadharcard(re.getString("adharcard"));
			ub.setaddress(re.getString("address"));
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
	
	public List<worker_reg_bean> getWorkerByElectritionID() throws SQLException
	{
		
		List<worker_reg_bean> list = new ArrayList<worker_reg_bean>();
		try
		{
		Connection con= connect.sqlconnection();
		String query="SELECT * FROM worker_registration INNER JOIN `worker_category` ON worker_registration.`w_cat_id` = worker_category.`w_cat_id` Where worker_category.`w_cat_id` = 21";
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
		ResultSet re=ps.executeQuery();
		while(re.next())
		{
			worker_reg_bean ub=new worker_reg_bean();
			ub.setwid(re.getInt("worker_id"));
			ub.setfname(re.getString("worker_fname"));
			ub.setlname(re.getString("worker_lname"));
			ub.setemail(re.getString("Email"));
			ub.setphone(re.getString("phone_no"));
			ub.setadharcard(re.getString("adharcard"));
			ub.setaddress(re.getString("address"));
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
	
	public List<worker_reg_bean> getWorkerByPlumberID() throws SQLException
	{
		
		List<worker_reg_bean> list = new ArrayList<worker_reg_bean>();
		try
		{
		Connection con= connect.sqlconnection();
		String query="SELECT * FROM worker_registration INNER JOIN `worker_category` ON worker_registration.`w_cat_id` = worker_category.`w_cat_id` Where worker_category.`w_cat_id` = 20";
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
		ResultSet re=ps.executeQuery();
		while(re.next())
		{
			worker_reg_bean ub=new worker_reg_bean();
			ub.setwid(re.getInt("worker_id"));
			ub.setfname(re.getString("worker_fname"));
			ub.setlname(re.getString("worker_lname"));
			ub.setemail(re.getString("Email"));
			ub.setphone(re.getString("phone_no"));
			ub.setadharcard(re.getString("adharcard"));
			ub.setaddress(re.getString("address"));
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

	public List<worker_reg_bean> getWorkerByCarpenterID() throws SQLException
	{
		
		List<worker_reg_bean> list = new ArrayList<worker_reg_bean>();
		try
		{
		Connection con= connect.sqlconnection();
		String query="SELECT * FROM worker_registration INNER JOIN `worker_category` ON worker_registration.`w_cat_id` = worker_category.`w_cat_id` Where worker_category.`w_cat_id` = 11";
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
		ResultSet re=ps.executeQuery();
		while(re.next())
		{
			worker_reg_bean ub=new worker_reg_bean();
			ub.setwid(re.getInt("worker_id"));
			ub.setfname(re.getString("worker_fname"));
			ub.setlname(re.getString("worker_lname"));
			ub.setemail(re.getString("Email"));
			ub.setphone(re.getString("phone_no"));
			ub.setadharcard(re.getString("adharcard"));
			ub.setaddress(re.getString("address"));
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

	public List<worker_reg_bean> getWorkerByPainterID() throws SQLException
	{
		
		List<worker_reg_bean> list = new ArrayList<worker_reg_bean>();
		try
		{
		Connection con= connect.sqlconnection();
		String query="SELECT * FROM worker_registration INNER JOIN `worker_category` ON worker_registration.`w_cat_id` = worker_category.`w_cat_id` Where worker_category.`w_cat_id` = 22";
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
		ResultSet re=ps.executeQuery();
		while(re.next())
		{
			worker_reg_bean ub=new worker_reg_bean();
			ub.setwid(re.getInt("worker_id"));
			ub.setfname(re.getString("worker_fname"));
			ub.setlname(re.getString("worker_lname"));
			ub.setemail(re.getString("Email"));
			ub.setphone(re.getString("phone_no"));
			ub.setadharcard(re.getString("adharcard"));
			ub.setaddress(re.getString("address"));
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

	public List<worker_reg_bean> getWorkerByBarberID() throws SQLException
	{
		
		List<worker_reg_bean> list = new ArrayList<worker_reg_bean>();
		try
		{
		Connection con= connect.sqlconnection();
		String query="SELECT * FROM worker_registration INNER JOIN `worker_category` ON worker_registration.`w_cat_id` = worker_category.`w_cat_id` Where worker_category.`w_cat_id` = 23";
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
		ResultSet re=ps.executeQuery();
		while(re.next())
		{
			worker_reg_bean ub=new worker_reg_bean();
			ub.setwid(re.getInt("worker_id"));
			ub.setfname(re.getString("worker_fname"));
			ub.setlname(re.getString("worker_lname"));
			ub.setemail(re.getString("Email"));
			ub.setphone(re.getString("phone_no"));
			ub.setadharcard(re.getString("adharcard"));
			ub.setaddress(re.getString("address"));
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

	public List<worker_reg_bean> getWorkerByMasonID() throws SQLException
	{
		
		List<worker_reg_bean> list = new ArrayList<worker_reg_bean>();
		try
		{
		Connection con= connect.sqlconnection();
		String query="SELECT * FROM worker_registration INNER JOIN `worker_category` ON worker_registration.`w_cat_id` = worker_category.`w_cat_id` Where worker_category.`w_cat_id` = 24";
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
		ResultSet re=ps.executeQuery();
		while(re.next())
		{
			worker_reg_bean ub=new worker_reg_bean();
			ub.setwid(re.getInt("worker_id"));
			ub.setfname(re.getString("worker_fname"));
			ub.setlname(re.getString("worker_lname"));
			ub.setemail(re.getString("Email"));
			ub.setphone(re.getString("phone_no"));
			ub.setadharcard(re.getString("adharcard"));
			ub.setaddress(re.getString("address"));
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
	public List<worker_reg_bean> getWorkerByPetKeeperID() throws SQLException
	{
		
		List<worker_reg_bean> list = new ArrayList<worker_reg_bean>();
		try
		{
		Connection con= connect.sqlconnection();
		String query="SELECT * FROM worker_registration INNER JOIN `worker_category` ON worker_registration.`w_cat_id` = worker_category.`w_cat_id` Where worker_category.`w_cat_id` = 25";
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
		ResultSet re=ps.executeQuery();
		while(re.next())
		{
			worker_reg_bean ub=new worker_reg_bean();
			ub.setwid(re.getInt("worker_id"));
			ub.setfname(re.getString("worker_fname"));
			ub.setlname(re.getString("worker_lname"));
			ub.setemail(re.getString("Email"));
			ub.setphone(re.getString("phone_no"));
			ub.setadharcard(re.getString("adharcard"));
			ub.setaddress(re.getString("address"));
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
	public List<worker_reg_bean> getWorkerByBlacksmithID() throws SQLException
	{
		
		List<worker_reg_bean> list = new ArrayList<worker_reg_bean>();
		try
		{
		Connection con= connect.sqlconnection();
		String query="SELECT * FROM worker_registration INNER JOIN `worker_category` ON worker_registration.`w_cat_id` = worker_category.`w_cat_id` Where worker_category.`w_cat_id` = 26";
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
		ResultSet re=ps.executeQuery();
		while(re.next())
		{
			worker_reg_bean ub=new worker_reg_bean();
			ub.setwid(re.getInt("worker_id"));
			ub.setfname(re.getString("worker_fname"));
			ub.setlname(re.getString("worker_lname"));
			ub.setemail(re.getString("Email"));
			ub.setphone(re.getString("phone_no"));
			ub.setadharcard(re.getString("adharcard"));
			ub.setaddress(re.getString("address"));
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
	public List<worker_reg_bean> getWorkerByGoldsmithID() throws SQLException
	{
		
		List<worker_reg_bean> list = new ArrayList<worker_reg_bean>();
		try
		{
		Connection con= connect.sqlconnection();
		String query="SELECT * FROM worker_registration INNER JOIN `worker_category` ON worker_registration.`w_cat_id` = worker_category.`w_cat_id` Where worker_category.`w_cat_id` = 27";
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
		ResultSet re=ps.executeQuery();
		while(re.next())
		{
			worker_reg_bean ub=new worker_reg_bean();
			ub.setwid(re.getInt("worker_id"));
			ub.setfname(re.getString("worker_fname"));
			ub.setlname(re.getString("worker_lname"));
			ub.setemail(re.getString("Email"));
			ub.setphone(re.getString("phone_no"));
			ub.setadharcard(re.getString("adharcard"));
			ub.setaddress(re.getString("address"));
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
	
	public static List<worker_reg_bean> getWorkerdetailsById(int sid) throws SQLException
	{
		List<worker_reg_bean> list =new ArrayList<worker_reg_bean>();
		try
		{
			Connection cn= connect.sqlconnection();
			String query="SELECT * FROM worker_registration INNER JOIN worker_category ON worker_registration.`w_cat_id` = worker_category.`w_cat_id` WHERE worker_registration.`w_cat_id` = '"+sid+"'";
			PreparedStatement ps=(PreparedStatement) cn.prepareStatement(query);
			ResultSet re=ps.executeQuery();
			while(re.next())
			{
				worker_reg_bean pb = new worker_reg_bean();
				pb.setfname(re.getString("worker_fname"));
				pb.setlname(re.getString("worker_lname"));
				pb.setemail(re.getString("email"));
				pb.setphone(re.getString("phone_no"));
				pb.setadharcard(re.getString("adharcard"));
				/*ub.setworkercategory(re.getString("w_c_name"));*/
				pb.setaddress(re.getString("address"));
				
				pb.setcity(re.getString("city"));
				pb.setstate(re.getString("state"));
				pb.setgender(re.getInt("gender"));
				pb.setprofile(re.getString("profile"));
				pb.setpassword(re.getString("password"));
				pb.setconpassword(re.getString("confirm_password"));
				list.add(pb);
			}
			re.close();
			ps.close();
			cn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	
}
