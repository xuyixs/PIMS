package com.pims.common;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.pims.jdbcUtil.DBConnectionManager;

public abstract class DaoSupport<T>  implements DAO {
	
	private ResultSet rs  = null;
	
	public void delete(String tableName,String idName, int idValue){
		
		Connection conn;
		try {
			conn = DBConnectionManager.getConnection();
			String sql = "delete from "+tableName+" where "+idName+"="+idValue;
			conn.prepareStatement(sql).executeUpdate();
			
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
	}
	
	public ResultSet findAll(String tableName){
		try {
			Connection conn = DBConnectionManager.getConnection();
			
			String sql = "select * from "+tableName;
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			DBConnectionManager.close(pstmt, conn);
			
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return rs;
	}
	
	public void update(String sql){
		
		try {
			Connection conn = DBConnectionManager.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}


	public void save(String tableName, List<Object> list) {
		
		StringBuffer sb = new StringBuffer();
		for(int i = 0; i < list.size(); i++){
			sb.append("?,");
		}
//		sb.substring(0, sb.length()-1);
		sb.deleteCharAt(list.size()*2-1);
		
		String sql = "insert into "+tableName+" values("+sb+")";
		
		try {
			Connection conn = DBConnectionManager.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			for(int i = 0; i < list.size(); i++){
				pstmt.setObject(i+1, list.get(i));
			}
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
