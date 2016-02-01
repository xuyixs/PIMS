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
 * Servlet implementation class AddUserServlet
 */
@WebServlet("/AddUserServlet")
public class AddUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		doPost(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html,charset = utf-8");
		
		String userName = request.getParameter("userName");
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		String birth = request.getParameter("birth");
		String nation = request.getParameter("nation");
		String edu = request.getParameter("edu");
		String works = request.getParameter("works");
		String phone = request.getParameter("phone");
		String place = request.getParameter("place");
		String email = request.getParameter("email");
		
		Account user = new Account(userName, name, sex, birth, nation, edu, works, phone, place, email);
		AccountDaoImpl daoimpl = new AccountDaoImpl();
		daoimpl.addUser(user);
		
		request.setAttribute("url", "login.jsp");
		request.getRequestDispatcher("success.jsp").forward(request, response);
		
		
	}

}
