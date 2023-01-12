package com.demo.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	public DBUtil() {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		public Connection getConnection() { 
			Connection con=null;
			try {
				con = DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","");
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			return con;
}
		public void closeConnection(Connection con)  {
			if(null!=con) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
}


