package com.dao;

import java.sql.Connection;

import com.bean.user_reg_bean;
import com.bean.worker_reg_bean;
import com.connectio.connect;
import com.mysql.jdbc.PreparedStatement;

public class EditProfileWorkerDao {

	public void updateWorker(worker_reg_bean wb)
	{
		try
		{
			Connection cn= connect.sqlconnection(); /*, photo=?*/
			String query="update worker_registration set worker_fname=?,worker_lname=?, email=?, phone_no=?, address=? where worker_id=?";
			PreparedStatement ps=(PreparedStatement) cn.prepareStatement(query);
			ps.setString(1,wb.getfname());
			ps.setString(2,wb.getlname());
			ps.setString(3,wb.getemail());
			ps.setString(4,wb.getphone());
			ps.setString(5,wb.getaddress());
			/*ps.setString(5,ub.getPhoto());*/
			ps.setInt(6,wb.getwid());
			ps.executeUpdate();
			cn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	} 
		public void updatePassword(worker_reg_bean wb)
		{
			try
			{
				Connection cn= connect.sqlconnection();
				String query="update worker_registration set password=?, confirm_password=? where worker_id=?";
				PreparedStatement ps=(PreparedStatement) cn.prepareStatement(query);
				ps.setString(1,wb.getpassword());
				ps.setString(2, wb.getconpassword());			
				ps.setInt(3,wb.getwid());
				ps.executeUpdate();
				cn.close();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
	
		public static void updatePhoto(worker_reg_bean wb) 
		{
			try
			{
				Connection cn= connect.sqlconnection();
				String query="update worker_registration set profile=? where worker_id=?";
				PreparedStatement ps=(PreparedStatement) cn.prepareStatement(query);		
				ps.setString(1, wb.getprofile());
				ps.setInt(2, wb.getwid());
				ps.executeUpdate();
				System.out.println("In Dao");
				cn.close();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}	
		}
}
