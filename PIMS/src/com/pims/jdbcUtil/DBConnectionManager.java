package com.pims.jdbcUtil;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class DBConnectionManager {
	private static String url = null;
	private static String user = null;
	private static String password = null;
	private static String driverClass = null;
	public static Connection conn = null;
	public Statement stmt = null;
	public ResultSet re = null;
	
	static{
		Properties prop = new Properties();
		InputStream in = DBConnectionManager.class.getResourceAsStream("/db.properties");
		try {
			prop.load(in);
			
			url = prop.getProperty("url");
			user = prop.getProperty("user");
			password = prop.getProperty("password");
			driverClass = prop.getProperty("driverClass");
			Class.forName(driverClass);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	public static Connection getConnection(){
			try {
				conn = DriverManager.getConnection(url,user,password);
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		return conn;
	}
	
	public static void close(Statement stmt,Connection conn){
		
		if(stmt != null){
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		if(conn != null){
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public static void close(ResultSet rs,Statement stmt,Connection conn){
		if(rs != null){
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		if(stmt != null){
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		if(conn != null){
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	
}
