package com.sbaitproject.roadwith.region.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sbaitproject.roadwith.region.vo.Zone;

@Repository
public class ZoneDaoImpl implements ZoneDao {
	
	private static final String NS = "zoneInfo.";
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<Zone> selectBySigu(String doName) {
		return sqlSession.selectList(NS + "SelectBySigu", doName);
	}

}
