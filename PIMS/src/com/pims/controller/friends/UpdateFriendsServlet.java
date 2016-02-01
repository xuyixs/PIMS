package com.pims.controller.friends;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pims.dao.impl.FriendsDaoImpl;

/**
 * Servlet implementation class UpdateFriendsServlet
 */
@WebServlet("/UpdateFriendsServlet")
public class UpdateFriendsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html.charset=utf-8");
		
		int friendsId = Integer.parseInt(request.getParameter("friendsId"));
		String userName = request.getParameter("userName");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String workSpace = request.getParameter("workSpace");
		String place = request.getParameter("place");
		String qq = request.getParameter("qq");
		
		String sql = "update friends set userName='"+userName+"',name='"+name+"',phone='"+phone+
				"',email='"+email+"',workSpace='"+workSpace+"',place='"+place+"',qq='"+qq+"' where friendsId="+friendsId;
		
		new FriendsDaoImpl().updFriends(sql);
		
		request.setAttribute("url", "FriendsServlet");
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
