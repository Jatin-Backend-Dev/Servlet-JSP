package com.app;

import java.sql.Connection;
import java.sql.DriverManager;


public class DBConnection {

	public static Connection getConnection() {
		// TODO Auto-generated method stub
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user_db", "root", "tJATIN@955");
			con = DriverManager.getConnection("jdbc:mysql://yamanote.proxy.rlwy.net:10734/railway", "root", "AEztCsnUznYNpiCOCtPtlcQBCFHYeNpl");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return con;
	}

}
//  jdbc:mysql://containers-us-west-123.railway.app:6543/railway