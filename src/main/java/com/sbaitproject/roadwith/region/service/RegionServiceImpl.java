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
		List<Zone> zoneList = zoneDao.selectBySigu(doName);
		model.addAttribute("zoneList", zoneList);
		model.addAttribute("doName", doName);
	}

	@Override
	public void sendWeatherUrl(Model model, String doName, String localName, String weatherUrl) {
		List<Zone> zoneList = zoneDao.selectBySigu(doName);
		model.addAttribute("zoneList", zoneList);
		model.addAttribute("doName", doName);
		model.addAttribute("localName", localName);
		model.addAttribute("weatherUrl", weatherUrl);
	}

}
