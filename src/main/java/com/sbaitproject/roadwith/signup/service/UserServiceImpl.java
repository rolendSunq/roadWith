package com.sbaitproject.roadwith.signup.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.sbaitproject.roadwith.signup.dao.UserDao;
import com.sbaitproject.roadwith.vo.Person;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDao;

	@Override
	public void registrationUser(Person person) {
		// id 조회
		// email 조회
		//System.out.println("registration 성공!!!");
		//userDao.signUpInsert(person);
	}

	@Override
	public void searchId(String id, Model model) {
		int result = userDao.findById(id);
		String status = null;
		
		if (result == 0) {
			 status = "success";
		} else {
			status = "failure";
		}
		System.out.println("Id 조회: " + status);
	}

}
