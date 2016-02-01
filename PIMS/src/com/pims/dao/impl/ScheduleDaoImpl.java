package com.pims.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.pims.bean.Schedule;
import com.pims.common.DaoSupport;
import com.pims.dao.ScheduleDao;
import com.pims.jdbcUtil.DBConnectionManager;

public class ScheduleDaoImpl extends DaoSupport<Schedule> implements ScheduleDao {

	public List<Schedule> findSchedule() {
		// TODO 自动生成的方法存根
		List<Schedule> list = new ArrayList<>();
		
		try {
			Connection conn = DBConnectionManager.getConnection();
			
			String sql = "select * from schedule";
			ResultSet rs = conn.prepareCall(sql).executeQuery();
			while(rs.next()){
				Schedule sch = new Schedule();
				sch.setScheduleId(rs.getInt("scheduleId"));
				sch.setUserName(rs.getString("userName"));
				sch.setDate(rs.getDate("date"));
				sch.setThing(rs.getString("thing"));
				list.add(sch);
			}
			
			rs.close();
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public void addSchedule(Schedule schedule) {
		// TODO 自动生成的方法存根
		List<Object> list = new ArrayList<Object>();
		list.add(schedule.getScheduleId());
		list.add(schedule.getUserName());
		list.add(schedule.getThing());
		list.add(schedule.getDate());
		
		this.save("schedule", list);
		
	}

	@Override
	public void delSchedule(int scheduleId) {
		// TODO 自动生成的方法存根
		
		this.delete("schedule", "scheduleId", scheduleId);
		
	}

	@Override
	public void updSchedule(String sql) {
		// TODO 自动生成的方法存根
		this.update(sql);

	}

	@Override
	public Schedule findScheduleById(int scheduleId) {
		// TODO 自动生成的方法存根
		Schedule sch = null;
		try {
			Connection conn = DBConnectionManager.getConnection();
			
			String sql = "select * from schedule where scheduleId= "+scheduleId;
			ResultSet rs = conn.prepareStatement(sql).executeQuery();
			while(rs.next()){
				sch = new Schedule();
				sch.setScheduleId(rs.getInt("scheduleId"));
				sch.setUserName(rs.getString("userName"));
				sch.setDate(rs.getDate("date"));
				sch.setThing(rs.getString("thing"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return sch;
	}

}
