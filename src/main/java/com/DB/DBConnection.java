package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	private static Connection conn;
	public static Connection getConn() {
		try {
			if(conn==null)
			{
				 Class.forName("com.mysql.cj.jdbc.Driver");  // register the driver class of mysql
		            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes_project", "root", "saurav8669");  // creating connection string to mention the info of our database and establishing connection with ity using interface Connection 
		                  
			}
		}
			catch (Exception e) {
				e.printStackTrace();
			}
		
		return conn;
	}
 
	 
	 
}
