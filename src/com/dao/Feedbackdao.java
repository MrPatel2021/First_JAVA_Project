package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import com.bean.Feedbackbean;
import com.connectio.connect;
public class Feedbackdao 
{
	public void insertfeedback(Feedbackbean fb) 
	{
		try
		{
			Connection cn = connect.sqlconnection();
			DateTimeFormatter dtf=DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
			LocalDateTime now = LocalDateTime.now();
			String query="insert into feedback(name,email,topic,satisfaction,message,is_active,doi,dou) values(?,?,?,?,?,1,'"+dtf.format(now)+"','"+dtf.format(now)+"')";
			PreparedStatement ps=(PreparedStatement) cn.prepareStatement(query);
			ps.setString(1, fb.getName());
			ps.setString(2, fb.getMail());
			ps.setString(3, fb.getFeedbackTopic());
			ps.setString(4, fb.getFeedbackSatisfaction());
			ps.setString(5, fb.getFeedbackMessage());
			ps.executeUpdate();
			cn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public void insertworkerfeedback(Feedbackbean fb) 
	{
		try
		{
			Connection cn = connect.sqlconnection();
			DateTimeFormatter dtf=DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
			LocalDateTime now = LocalDateTime.now();
			String query="insert into feedback_worker(name,email,topic,satisfaction,message,is_active,doi,dou) values(?,?,?,?,?,1,'"+dtf.format(now)+"','"+dtf.format(now)+"')";
			PreparedStatement ps=(PreparedStatement) cn.prepareStatement(query);
			ps.setString(1, fb.getName());
			ps.setString(2, fb.getMail());
			ps.setString(3, fb.getFeedbackTopic());
			ps.setString(4, fb.getFeedbackSatisfaction());
			ps.setString(5, fb.getFeedbackMessage());
			ps.executeUpdate();
			cn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public List<Feedbackbean> getallFeedback() throws SQLException
	{
		List<Feedbackbean> list =new ArrayList<Feedbackbean>();
		try
		{
			Connection cn = connect.sqlconnection();		
			String query ="select * from feedback WHERE is_active=1";
			PreparedStatement ps=(PreparedStatement) cn.prepareStatement(query);
 			ResultSet r= ps.executeQuery();			
			while(r.next())
			{
				Feedbackbean fb = new Feedbackbean();
				fb.setFeedbackid(r.getInt("feedback_id"));
				fb.setName(r.getString("name"));
				fb.setMail(r.getString("email"));
				fb.setFeedbackTopic(r.getString("topic"));
				fb.setFeedbackSatisfaction(r.getString("satisfaction"));
				fb.setFeedbackMessage(r.getString("message"));
				list.add(fb);
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
	
	public List<Feedbackbean> getallworkerFeedback() throws SQLException
	{
		List<Feedbackbean> list =new ArrayList<Feedbackbean>();
		try
		{
			Connection cn = connect.sqlconnection();		
			String query ="select * from feedback_worker WHERE is_active=1";
			PreparedStatement ps=(PreparedStatement) cn.prepareStatement(query);
 			ResultSet r= ps.executeQuery();			
			while(r.next())
			{
				Feedbackbean fb = new Feedbackbean();
				fb.setFeedbackid(r.getInt("feedback_id"));
				fb.setName(r.getString("name"));
				fb.setMail(r.getString("email"));
				fb.setFeedbackTopic(r.getString("topic"));
				fb.setFeedbackSatisfaction(r.getString("satisfaction"));
				fb.setFeedbackMessage(r.getString("message"));
				list.add(fb);
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
	
	public void deleteFeedback(int id)
	{
		try
		{
			Connection cn = connect.sqlconnection();		
			String query="update feedback set is_active=0 where feedback_id=?";
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
	
	public void deleteworkerFeedback(int id)
	{
		try
		{
			Connection cn = connect.sqlconnection();		
			String query="update feedback_worker set is_active=0 where feedback_id=?";
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
