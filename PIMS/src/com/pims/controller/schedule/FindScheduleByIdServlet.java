package com.pims.controller.schedule;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pims.bean.Schedule;
import com.pims.dao.impl.ScheduleDaoImpl;

/**
 * Servlet implementation class FindScheduleByIdServlet
 */
@WebServlet("/FindScheduleByIdServlet")
public class FindScheduleByIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int scheduleId = Integer.parseInt(request.getParameter("scheduleId"));
		
		Schedule schedule = new ScheduleDaoImpl().findScheduleById(scheduleId);
		
		request.setAttribute("schedule", schedule);
		request.getRequestDispatcher("updateschedule.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
