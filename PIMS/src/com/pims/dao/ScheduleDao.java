package com.pims.dao;

import java.util.List;

import com.pims.bean.Schedule;

public interface ScheduleDao {
	
	public List<Schedule> findSchedule();
	
	public void addSchedule(Schedule schedule);
	
	public void delSchedule(int scheduleId);
	
	public void updSchedule(String sql);
	
	public Schedule findScheduleById(int scheduleId);
	
}
