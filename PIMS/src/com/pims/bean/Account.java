package com.pims.bean;

public class Account {
	private int userId;
	private String userName;
	private String passWord;
	private String name;
	private String sex;
	private String birth;
	private String nation;
	private String edu;
	private String works;
	private String phone;
	private String place;
	private String email;
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getEdu() {
		return edu;
	}

	public void setEdu(String edu) {
		this.edu = edu;
	}

	public String getWorks() {
		return works;
	}

	public void setWorks(String works) {
		this.works = works;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public Account(){
		
	}

	public Account(String userName, String name, String sex, String birth, String nation, String edu,
			String works, String phone, String place, String email) {
		super();
		this.userName = userName;
		this.name = name;
		this.sex = sex;
		this.birth = birth;
		this.nation = nation;
		this.edu = edu;
		this.works = works;
		this.phone = phone;
		this.place = place;
		this.email = email;
	}

	public Account(int userId, String userName, String passWord, String name, String sex, String birth, String nation,
			String edu, String works, String phone, String place, String email) {
		super();
		this.setUserId(userId);
		this.userName = userName;
		this.passWord = passWord;
		this.name = name;
		this.sex = sex;
		this.birth = birth;
		this.nation = nation;
		this.edu = edu;
		this.works = works;
		this.phone = phone;
		this.place = place;
		this.email = email;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	
}
