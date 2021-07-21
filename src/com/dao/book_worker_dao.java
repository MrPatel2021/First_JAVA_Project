package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import com.bean.book_worker_bean;
import com.bean.user_reg_bean;
import com.bean.worker_reg_bean;
import com.connectio.connect;

public class book_worker_dao {

	public void insert_book_data(book_worker_bean wb)
	{
		try
		{
			Connection cn= com.connectio.connect.sqlconnection();
			
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
			LocalDateTime now = LocalDateTime.now();
			
			String query="insert into booking_history(worker_id,worker_fname,worker_lname,date,time,problem,doi,dou,isactive) values(?,?,?,?,?,?, '"+dtf.format(now)+"', '"+dtf.format(now)+"', 1)";
			/*String query1 = "update worker_registration set isactive=2 where worker_id=?";*/
			PreparedStatement ps=(PreparedStatement)cn.prepareStatement(query);
			/*PreparedStatement ps1=(PreparedStatement)cn.prepareStatement(query1);*/
			
			ps.setString(1, wb.getwid());
			ps.setString(2, wb.getfname());
			ps.setString(3, wb.getlname());
			ps.setString(4, wb.getbdate());
			ps.setString(5, wb.getbtime());
			ps.setString(6, wb.getproblem());
			/*ps1.executeUpdate();*/
			ps.executeUpdate();
			
			
			/*String query1 = "update worker_registration set isactive=2 where worker_id=?";
			worker_reg_bean wrb = new worker_reg_bean();
			PreparedStatement ps1 = (PreparedStatement) cn.prepareStatement(query1);
			ps1.setInt(1, wrb.getIsactive());
			ps1.executeUpdate();*/
			
			
			cn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public List<book_worker_bean> getAlldata() throws SQLException
	{
		
		List<book_worker_bean> list = new ArrayList<book_worker_bean>();
		try
		{
		Connection con= connect.sqlconnection();
		String query="SELECT * FROM booking_history WHERE isactive=1";		
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);
		ResultSet re=ps.executeQuery();
		while(re.next())
		{
			book_worker_bean wb = new book_worker_bean();
			wb.setbid(re.getInt("booking_id"));
			wb.setwid(re.getString("worker_id"));
			wb.setfname(re.getString("worker_fname"));
			wb.setlname(re.getString("worker_lname"));
			wb.setbdate(re.getString("date"));
			wb.setbtime(re.getString("time"));
			wb.setproblem(re.getString("problem"));
			list.add(wb);
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
	
	public void delete_data(int id)
	{
		try
		{
			Connection con= connect.sqlconnection();
			String query="UPDATE booking_history set isactive=0 WHERE booking_id=?";
			PreparedStatement ps= con.prepareStatement(query);
			ps.setInt(1,id);
			ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
