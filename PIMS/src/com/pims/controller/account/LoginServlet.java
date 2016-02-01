package com.pims.controller.account;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pims.bean.Account;
import com.pims.dao.impl.AccountDaoImpl;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		
		String userName = request.getParameter("userName");
		String passWord = request.getParameter("passWord");
		
		Account userDB = new AccountDaoImpl().findByUsername(userName);
		
		if(userDB == null){
			request.setAttribute("userName", userName);
			request.setAttribute("url", "regedit.jsp");
			request.getRequestDispatcher("toregedit.jsp").forward(request, response);
		} else{
			Account account = new AccountDaoImpl().login(userName, passWord);
			if(account != null){
				HttpSession session = request.getSession();
				session.setAttribute("account", account);
				request.getRequestDispatcher("/main.jsp").forward(request, response);
			} else{
				request.setAttribute("error", "用户名或密码错误！");
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
