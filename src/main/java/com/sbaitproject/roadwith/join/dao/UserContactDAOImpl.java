package com.sbaitproject.roadwith.join.dao;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sbaitproject.roadwith.signservice.ContactServicesImpl;
import com.sbaitproject.roadwith.vo.Person;

@Repository
public class UserContactDAOImpl implements UserContactDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final Logger logger = LoggerFactory.getLogger(ContactServicesImpl.class);
	
	// end must be point . 
	private static final String NS = "com.sbaitproject.roadwith.vo.Person.";
	
	@Override
	public String getUserID(String userInfo) {
		logger.info("dao select one id or email is " + userInfo);
		return sqlSession.selectOne(NS + "getUser", userInfo);
	}

}
