package com.sbaitproject.roadwith.vo;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Person {
	private String id;
	private String name;
	private String nickName;
	private String email;
	private String pw;
	private Timestamp logTime;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getLogTime() {
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        // S is the millisecond
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd' 'HH:mm:ss");

		return simpleDateFormat.format(timestamp);
	}
	public void setLogTime(Timestamp logTime) {
		this.logTime = logTime;
	}
	
}
