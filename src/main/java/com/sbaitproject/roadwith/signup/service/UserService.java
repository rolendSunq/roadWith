package com.sbaitproject.roadwith.signup.service;

import javax.servlet.http.HttpServletResponse;

import com.sbaitproject.roadwith.vo.Person;

public interface UserService {
	
	public void searchId(String id, HttpServletResponse response);
	public void registrationUser(Person person);
	public void searchEmail(String email, HttpServletResponse response);
	public void signUpUserInsert(Person person);
	public void findIdService(String userEmail, HttpServletResponse response);
}
