package com.sbaitproject.roadwith.signup.dao;

import com.sbaitproject.roadwith.vo.Person;

public interface UserDao {

	public int findById(String id);
	public int findByEmail(String email);
	public void signUpInsert(Person person);
	public String findIdByEmail(String userEmail);
}
