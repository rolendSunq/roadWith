package com.sbaitproject.roadwith.signup.service;

import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

import com.sbaitproject.roadwith.vo.Person;

public interface UserService {
	
	public void searchId(String id, HttpServletResponse response);
	public void registrationUser(Person person);
	public void searchEmail(String email, Model model);
	public void signUpUserInsert(Person person);
}
