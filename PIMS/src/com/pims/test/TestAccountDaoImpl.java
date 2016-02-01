package com.pims.test;

import org.junit.Before;
import org.junit.Test;

import com.pims.bean.Account;
import com.pims.dao.AccountDao;
import com.pims.dao.impl.AccountDaoImpl;

public class TestAccountDaoImpl {
	
	AccountDao accountdaoimpl = null;
	@Before
	public void init(){
		accountdaoimpl = new AccountDaoImpl();
	}
	
	@Test
	public void testAccountDaoImpl(){
		Account acc = new Account();
		acc.setUserId(1);
		acc.setUserName("huhu");
		acc.setSex("男");
		acc.setName("xuyi");
		acc.setEdu("本科");
		acc.setWorks("student");
		acc.setPhone("17780528845");
		acc.setEmail("huhu@126.com");
		acc.setNation("China");
		acc.setBirth("1992-12-03");
		acc.setPassWord("123456");
		acc.setPlace("成都");
		accountdaoimpl.addUser(acc);
		
	}
	
}
