package com.sbaitproject.roadwith.signup.service;

import org.springframework.ui.Model;

import com.sbaitproject.roadwith.vo.Person;

public interface UserService {
	
	public void searchId(String id, Model model);
	public void registrationUser(Person person);
	public void searchEmail(String email, Model model);
	public void signUpUserInsert(Person person);
}
