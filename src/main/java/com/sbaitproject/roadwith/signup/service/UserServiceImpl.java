package com.sbaitproject.roadwith.signup.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.sbaitproject.roadwith.signup.dao.UserDao;
import com.sbaitproject.roadwith.vo.Person;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDao;

	@Override
	public void registrationUser(Person person) {
		System.out.println("time:" + person.getLogTime());
		userDao.signUpInsert(person);
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
	public void searchEmail(String email, HttpServletResponse response) {
		Gson gson = new Gson();
		PrintWriter printWriter = null;
		String status = null;
		int result = userDao.findByEmail(email);
		
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
	public void signUpUserInsert(Person person) {
		userDao.signUpInsert(person);
	}

	@Override
	public void findIdService(String userEmail, HttpServletResponse response) {
		Gson gson = new Gson();
		PrintWriter printWriter = null;
		
		response.setContentType("application/json");
		response.setContentType("text/xml; charset=UTF-8");
		response.setHeader("Cache-Control", "no-cache");
		
		String result = userDao.findIdByEmail(userEmail);
		
		try {
			printWriter = new PrintWriter(response.getWriter());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		printWriter.println(gson.toJson(result));
		printWriter.flush();
		printWriter.close();
	}

	@Override
	public void findPasswdService(String userId, HttpServletResponse response) {
		Gson gson = new Gson();
		PrintWriter printWriter = null;
		
		response.setContentType("application/json");
		response.setContentType("text/xml; charset=UTF-8");
		response.setHeader("Cache-Control", "no-cache");
		
		String result = userDao.findPasswdById(userId);
		
		System.out.println(result);
		
		try {
			printWriter = new PrintWriter(response.getWriter());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		printWriter.println(gson.toJson(result));
		printWriter.flush();
		printWriter.close();
		
	}




}
