package com.pims.bean;

import java.util.Date;

public class Schedule {
	
	private int scheduleId;
	private String userName;
	private String thing;
	private Date date;
	
	public Schedule() {
		super();
	}
	
	public Schedule(String userName, String thing, Date date) {
		super();
		this.userName = userName;
		this.thing = thing;
		this.date = date;
	}
	
	public int getScheduleId() {
		return scheduleId;
	}
	public void setScheduleId(int scheduleId) {
		this.scheduleId = scheduleId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getThing() {
		return thing;
	}
	public void setThing(String thing) {
		this.thing = thing;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	
	
}
