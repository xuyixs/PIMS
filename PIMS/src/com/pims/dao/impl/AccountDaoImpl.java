package com.pims.dao.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.pims.bean.Account;
import com.pims.common.DaoSupport;
import com.pims.dao.AccountDao;
import com.pims.jdbcUtil.DBConnectionManager;

public class AccountDaoImpl extends DaoSupport<Account> implements AccountDao {
	
	public void updUser(String sql){
		this.update(sql);
	}

	public void addUser(Account user) {
		
		List<Object> list = new ArrayList<Object>();
		list.add(user.getUserId());
		list.add(user.getUserName());
		list.add("123456");
		list.add(user.getName());
		list.add(user.getSex());
		list.add(user.getBirth());
		list.add(user.getNation());
		list.add(user.getEdu());
		list.add(user.getWorks());
		list.add(user.getPhone());
		list.add(user.getPlace());
		list.add(user.getEmail());
		this.save("account", list);
	}

	public Account findByUsername(String userName) {
		
		Account acc = null;
		try {
			Connection conn = DBConnectionManager.getConnection();
			
			String sql = "select * from account where userName='"+userName+"'";
			QueryRunner qr = new QueryRunner();
			
			acc = qr.query(conn, sql, new BeanHandler<Account>(Account.class));
			
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return acc;
	}

	public Account login(String userName, String passWord) {
		
		Account acc = null;
		try {
			Connection conn = DBConnectionManager.getConnection();
			
			String sql = "select * from account where userName='"+userName+"' and '"+passWord+"'";
			QueryRunner qr = new QueryRunner();
			
			acc = qr.query(conn, sql, new BeanHandler<Account>(Account.class));
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return acc;
	}
}