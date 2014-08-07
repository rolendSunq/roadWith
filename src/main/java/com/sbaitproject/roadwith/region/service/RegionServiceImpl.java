package com.sbaitproject.roadwith.region.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.sbaitproject.roadwith.region.dao.ZoneDao;
import com.sbaitproject.roadwith.region.vo.Zone;

@Service
public class RegionServiceImpl implements RegionService {

	@Autowired
	ZoneDao zoneDao;
	
	@Override
	public void getZoneNumber(String doName, Model model) {
		List<Zone> zone = zoneDao.selectBySigu(doName);
		model.addAttribute("zone", zone);
	}

}
