package com.pims.controller.account;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pims.dao.impl.AccountDaoImpl;

/**
 * Servlet implementation class UpdateUserServlet
 */
@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset=utf-8");
		
		int userId = Integer.parseInt(request.getParameter("userId"));
		String userName = request.getParameter("userName");
		String passWord = request.getParameter("passWord");
		String name  = request.getParameter("name");
		String sex = request.getParameter("sex");
		String birth = request.getParameter("birth");
		String nation = request.getParameter("nation");
		String edu =  request.getParameter("edu");
		String works = request.getParameter("works");
		String phone = request.getParameter("phone");
		String place = request.getParameter("place");
		String email = request.getParameter("email");
		
		String sql = "update account set userName='"+userName+"',passWord='"+
				passWord+"',name='"+name+"',sex='"+sex+"',birth='"+
				birth+"',nation='"+nation+"',edu='"+edu+"',works='"+
				works+"',phone='"+phone+"',place='"+place+"',email='"+
				email+"' where userId="+userId;
		
		new AccountDaoImpl().updUser(sql);
		request.setAttribute("url", "FindUserServlet");
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
