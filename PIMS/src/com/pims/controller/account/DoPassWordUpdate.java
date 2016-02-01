package com.pims.controller.account;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pims.bean.Account;
import com.pims.dao.impl.AccountDaoImpl;

/**
 * Servlet implementation class DoPassWordUpdate
 */
@WebServlet("/DoPassWordUpdate")
public class DoPassWordUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		
		int userId = Integer.parseInt(request.getParameter("userId"));
		String userName = request.getParameter("userName");
		String passWord2 = request.getParameter("passWord2");
		
		Account account = new AccountDaoImpl().findByUsername(userName);
		
		String sql = "update account set userName='" + userName + "' ,passWord='"
				+ passWord2 + "' ,name='" + account.getName() + "' ,sex='"
				+ account.getSex() + "' ,birth='" + account.getBirth()
				+ "' ,nation='" + account.getNation() + "' ,edu='" + account.getEdu()
				+ "' ,works='" + account.getWorks() + "' ,phone='"
				+ account.getPhone() + "' ,place='" + account.getPlace()
				+ "' ,email='" + account.getEmail() + "' where userId=" + userId;
		
		new AccountDaoImpl().updUser(sql);
		
		request.setAttribute("url", "UpdatePassWord");
		request.getRequestDispatcher("success.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
