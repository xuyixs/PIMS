package com.pims.dao;

import com.pims.bean.Account;

public interface AccountDao {
	
	public void addUser(Account user);
	
	public Account findByUsername(String userNames);
	
	public Account login(String userName,String passWrod);
	
	public void updUser(String sql);
}
