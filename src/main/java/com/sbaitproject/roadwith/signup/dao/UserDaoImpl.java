package com.sbaitproject.roadwith.signup.dao;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sbaitproject.roadwith.signup.service.UserServiceImpl;
import com.sbaitproject.roadwith.vo.Person;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SqlSession session;
	private static final Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);
	
	private static final String NS = "signup.";

	@Override
	public void signUpInsert(Person person) {
		session.insert(NS + "SignUpInsert", person);
	}

	@Override
	public int findById(String id) {
		return session.selectOne(NS + "FindById", id);
	}

	@Override
	public int findByEmail(String email) {
		return session.selectOne(NS + "FindByEmail", email);
	}
	

}
