package com.sbaitproject.roadwith.signup.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.google.gson.Gson;
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
	public void searchId(String id, HttpServletResponse response) {
		Gson gson = new Gson();
		PrintWriter printWriter = null;
		String status = null;
		
		int result = userDao.findById(id);
		
		if (result == 0) {
			 status = "success";
		} else {
			status = "failure";
		}
		
		response.setContentType("application/json");
		response.setContentType("text/xml; charset=UTF-8");
		response.setHeader("Cache-Control", "no-cache");
		try {
			printWriter = new PrintWriter(response.getWriter());
		} catch (IOException e) {
			e.printStackTrace();
		}
		printWriter.println(gson.toJson(status));
		printWriter.flush();
		printWriter.close();
	}

	@Override
	public void searchEmail(String email, Model model) {
		userDao.findByEmail(email);
	}

	@Override
	public void signUpUserInsert(Person person) {
		userDao.signUpInsert(person);
	}

}
