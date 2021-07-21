package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import com.bean.Contactbean;
import com.connectio.connect;
public class Contactusdao {

	public void insertcontactus(Contactbean cb) {
		try
		{
			Connection cn = connect.sqlconnection();
			DateTimeFormatter dtf=DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
			LocalDateTime now = LocalDateTime.now();
			String query="insert into contact_us_user(name,email,mobile_no,message,isactive,doi,dou) values(?,?,?,?,1,'"+dtf.format(now)+"','"+dtf.format(now)+"')";
			PreparedStatement ps=(PreparedStatement) cn.prepareStatement(query);
			ps.setString(1, cb.getName());
			ps.setString(2, cb.getEmail());
			ps.setString(3, cb.getMobile_no());
			ps.setString(4, cb.getMessage());
			ps.executeUpdate();
			cn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public void insertworkercontactus(Contactbean cb) {
		try
		{
			Connection cn = connect.sqlconnection();
			DateTimeFormatter dtf=DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
			LocalDateTime now = LocalDateTime.now();
			String query="insert into contact_us_worker(name,email,mobile_no,message,isactive,doi,dou) values(?,?,?,?,1,'"+dtf.format(now)+"','"+dtf.format(now)+"')";
			PreparedStatement ps=(PreparedStatement) cn.prepareStatement(query);
			ps.setString(1, cb.getName());
			ps.setString(2, cb.getEmail());
			ps.setString(3, cb.getMobile_no());
			ps.setString(4, cb.getMessage());
			ps.executeUpdate();
			cn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public List<Contactbean> getallContactus() throws SQLException
	{
		List<Contactbean> list =new ArrayList<Contactbean>();
		try
		{
			Connection cn = connect.sqlconnection();		
			String query ="select * from contact_us_user where isactive=1";
			PreparedStatement ps=(PreparedStatement) cn.prepareStatement(query);
 			ResultSet r= ps.executeQuery();			
			while(r.next())
			{
				Contactbean cb = new Contactbean();		
				cb.setContact_us_id(r.getInt("contact_us_id"));
				cb.setName(r.getString("name"));
				cb.setEmail(r.getString("email"));
				cb.setMobile_no(r.getString("mobile_no"));
				cb.setMessage(r.getString("message")); 	
				list.add(cb);
			}
			r.close();
			ps.close();
			cn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	public List<Contactbean> getallWorkerContactus() throws SQLException
	{
		List<Contactbean> list =new ArrayList<Contactbean>();
		try
		{
			Connection cn = connect.sqlconnection();		
			String query ="select * from contact_us_worker where isactive=1";
			PreparedStatement ps=(PreparedStatement) cn.prepareStatement(query);
 			ResultSet r= ps.executeQuery();			
			while(r.next())
			{
				Contactbean cb = new Contactbean();		
				cb.setContact_us_id(r.getInt("contact_us_id"));
				cb.setName(r.getString("name"));
				cb.setEmail(r.getString("email"));
				cb.setMobile_no(r.getString("mobile_no"));
				cb.setMessage(r.getString("message")); 	
				list.add(cb);
			}
			r.close();
			ps.close();
			cn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	
	public void deletecontactus(int id)
	{
		try
		{
			Connection cn = connect.sqlconnection();	
			String query="update contact_us_user set isactive=0 where contact_us_id=?";
			PreparedStatement ps=cn.prepareStatement(query);
			ps.setInt(1,id);
			ps.executeUpdate();
			cn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public void deleteworkercontactus(int id)
	{
		try
		{
			Connection cn = connect.sqlconnection();	
			String query="update contact_us_worker set isactive=0 where contact_us_id=?";
			PreparedStatement ps=cn.prepareStatement(query);
			ps.setInt(1,id);
			ps.executeUpdate();
			cn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
