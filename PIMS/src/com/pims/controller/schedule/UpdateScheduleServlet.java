package com.pims.controller.schedule;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pims.dao.impl.ScheduleDaoImpl;

/**
 * Servlet implementation class UpdateScheduleServlet
 */
@WebServlet("/UpdateScheduleServlet")
public class UpdateScheduleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html,charset =utf-8");
		
		int scheduleId = Integer.parseInt(request.getParameter("scheduleId"));
		String userName = request.getParameter("userName");
		String thing = request.getParameter("thing");
		String dateString = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		
		String sql = "update schedule set userName='"+userName+"',thing='"+thing+"',date='"+
		dateString+"' where scheduleId="+scheduleId;
		
		new ScheduleDaoImpl().updSchedule(sql);
		
		request.setAttribute("url", "ScheduleServlet");
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
