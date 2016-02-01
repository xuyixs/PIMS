package com.pims.bean;

public class Friends {
	
	private int friendsId;
	private String userName;
	private String name;
	private String phone;
	private String email;
	private String workSpace;
	private String place;
	private String qq;
	
	public Friends() {
		super();
	}
	
	public Friends(String userName, String name, String phone, String email, String workSpace, String place,
			String qq) {
		super();
		this.userName = userName;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.workSpace = workSpace;
		this.place = place;
		this.qq = qq;
	}
	
	public int getFriendsId() {
		return friendsId;
	}
	public void setFriendsId(int friendsId) {
		this.friendsId = friendsId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getWorkSpace() {
		return workSpace;
	}
	public void setWorkSpace(String workSpace) {
		this.workSpace = workSpace;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	
	
}
