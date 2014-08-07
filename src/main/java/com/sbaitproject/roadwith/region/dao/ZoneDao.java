package com.sbaitproject.roadwith.region.dao;

import java.util.List;

import com.sbaitproject.roadwith.region.vo.Zone;

public interface ZoneDao {
	public List<Zone> selectBySigu(String doName);
}
