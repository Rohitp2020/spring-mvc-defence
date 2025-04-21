package com.springsecurity.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.springsecurity.defence.Aspirant;

public class DefenceDBUtil {
	
//	static String url = "jdbc:mysql://localhost:3306/defence";
//	static String userName = "root";
//	static String password = "root";
//	static String driver = "com.mysql.cj.jdbc.Driver";
	
	
	static String url = "jdbc:mysql://avnadmin:AVNS_IBpzNYXm_UnSgV3uUXb@mysql-365964a7-defence-aspirant.j.aivencloud.com:25355/defaultdb?useSSL=true&verifyServerCertificate=false&requireSSL=true";
	static String userName = "avnadmin";
	static String password = "AVNS_IBpzNYXm_UnSgV3uUXb";
	static String driver = "com.mysql.cj.jdbc.Driver";
	
	public static int insertAspirant(HashMap<String, String> data) throws ClassNotFoundException, SQLException{
		//ArrayList<Aspirant> aspirant = new ArrayList<Aspirant>();
		String aspirantName = data.get("NAME");
		String aspirantEmail = data.get("EMAIL");
		String aspirantPass  = data.get("PASS");
		String query = "INSERT INTO NTS_DEFENCE_REGISTER_MT (name, email, password, role) VALUES ('"
			    + aspirantName + "','" + aspirantEmail + "','" + aspirantPass + "', 'admin')";
		int rowsAffected = 0;
		
		System.out.println(query);
		
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, userName, password);
		Statement stmt = con.createStatement();
		
		try {
			rowsAffected = stmt.executeUpdate(query);
			System.out.println("This is my try insert query result::"+rowsAffected);
		}catch (SQLException s) {
			System.out.println("This is my catch insert query result::"+rowsAffected);
		}
		//int rowsAffected = stmt.executeUpdate(query); 
		
		
		
		//aspirant.add(rowsAffected);
		
//		while(rSet.next()) {
//			//String Id = rSet.getString(1);
//			String userName = rSet.getString(2);
//			String userEmail = rSet.getString(3);
//			String userPass = rSet.getString(4);
//			Aspirant f = new Aspirant(userName,userEmail,userPass);
//			aspirant.add(f);
//		}
		//System.out.println(advice);
		con.close();
		return rowsAffected;
	}
	
	public static HashMap<String, String> selectAspirant(HashMap<String, String> data) throws ClassNotFoundException, SQLException{
		//ArrayList<String> aspirant = new ArrayList<String>();
		HashMap<String, String> loginAspirant = new HashMap<>();
		String loginEmail = data.get("EMAIL");
		String loginPass  = data.get("PASS");
		String query = "SELECT email,password FROM NTS_DEFENCE_REGISTER_MT where email = '"+loginEmail+"'";
		ResultSet rSet = null;
		
		System.out.println(query);
		
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, userName, password);
		Statement stmt = con.createStatement();
		
		try {
			rSet = stmt.executeQuery(query);
			System.out.println("This is my try select query result::"+rSet);
		}catch (SQLException s) {
			System.out.println("This is my catch select query result::");
		}
		
		while(rSet.next()) {
		//String Id = rSet.getString(1);
		//String userName = rSet.getString();
		String userEmail = rSet.getString(1);
		String userPass = rSet.getString(2);
		//Aspirant f = new Aspirant(userName,userEmail,userPass);
		loginAspirant.put("email", userEmail);
		loginAspirant.put("pass", userPass);
	}
	System.out.println("Login aspirant::"+loginAspirant);
	con.close();
	return loginAspirant;
		
	}

}
