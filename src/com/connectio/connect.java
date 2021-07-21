package com.connectio;

import java.sql.Connection;
import java.sql.DriverManager;

public class connect {

		public static Connection sqlconnection()
		{
			Connection cn = null;
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "123456");
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return cn;
		}
}
