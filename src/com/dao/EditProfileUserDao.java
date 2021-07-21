package com.dao;
import java.sql.Connection;

import com.bean.user_reg_bean;
import com.bean.worker_reg_bean;
import com.connectio.connect;
import com.mysql.jdbc.PreparedStatement;


public class EditProfileUserDao {
	public void updateUser(user_reg_bean ub)
	{
		try
		{
			Connection cn= connect.sqlconnection();
			String query="update user_registration set user_fname=?,user_lname=?, email=?, phone_no=?, address=? where user_id=?";
			PreparedStatement ps=(PreparedStatement) cn.prepareStatement(query);
			ps.setString(1,ub.getfname());
			ps.setString(2,ub.getlname());
			ps.setString(3,ub.getemail());
			ps.setString(4,ub.getphone());
			ps.setString(5,ub.getaddress());
			/*ps.setString(5,ub.getPhoto());*/
			ps.setInt(6,ub.getuid());
			ps.executeUpdate();
			cn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public void updatePassword(user_reg_bean ub)
	{
		try
		{
			Connection cn= connect.sqlconnection();
			String query="update user_registration set password=?, confirm_password=? where user_id=?";
			PreparedStatement ps=(PreparedStatement) cn.prepareStatement(query);
			ps.setString(1,ub.getpassword());
			ps.setString(2, ub.getconpassword());			
			ps.setInt(3,ub.getuid());
			ps.executeUpdate();
			cn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	public static void updatePhoto(user_reg_bean ub) 
	{
		try
		{
			Connection cn= connect.sqlconnection();
			String query="update user_registration set profile=? where user_id=?";
			PreparedStatement ps=(PreparedStatement) cn.prepareStatement(query);		
			ps.setString(1, ub.getprofile());
			ps.setInt(2, ub.getuid());
			ps.executeUpdate();
			cn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
	}
}
