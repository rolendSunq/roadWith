package com.sbaitproject.roadwith.join.dao;


public interface UserContactDAO {
	public int getPersonID(String userInfo);
	public int getPersonEmail(String userEmail);
	public int getPersonPassword(String userPassword);
	public String getPersonIdByEmail(String userEmail);
}
