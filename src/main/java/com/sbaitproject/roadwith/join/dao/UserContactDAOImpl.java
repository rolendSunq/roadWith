package com.sbaitproject.roadwith.join.dao;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sbaitproject.roadwith.signservice.ContactServicesImpl;

@Repository
public class UserContactDAOImpl implements UserContactDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final Logger logger = LoggerFactory.getLogger(ContactServicesImpl.class);
	
	// end must be point . 
	private static final String NS = "SigninUser.";
	
	@Override
	public int getPersonID(String userId) {
		logger.info("dao select one id is " + userId);
		return sqlSession.selectOne(NS + "getPersonID", userId);
	}

	@Override
	public int getPersonEmail(String userEmail) {
		logger.info("dao select one email is " + userEmail);
		return sqlSession.selectOne(NS + "getPsersonEamil", userEmail);
	}

	@Override
	public int getPersonPassword(String userPassword) {
		logger.info("dao select one password");
		return sqlSession.selectOne(NS + "getPersonPassword", userPassword);
	}

	@Override
	public String getPersonIdByEmail(String userEmail) {
		logger.info("dao select one email is " + userEmail);
		return sqlSession.selectOne(NS + "getPersonIdByEmail", userEmail);
	}

}
