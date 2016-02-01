package com.pims.controller.friends;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pims.bean.Friends;
import com.pims.dao.impl.FriendsDaoImpl;

/**
 * Servlet implementation class FindFriendsByIdServlet
 */
@WebServlet("/FindFriendsByIdServlet")
public class FindFriendsByIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int friendsId = Integer.parseInt(request.getParameter("friendsId"));
		Friends friends = new FriendsDaoImpl().findFriendsById(friendsId);
		
		request.setAttribute("friends", friends);
		request.getRequestDispatcher("updatefriends.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
