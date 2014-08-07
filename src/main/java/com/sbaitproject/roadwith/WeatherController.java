package com.sbaitproject.roadwith;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sbaitproject.roadwith.region.service.RegionService;
import com.sbaitproject.roadwith.region.vo.Zone;

@Component("weathers")
@Controller
public class WeatherController {

	@Autowired
	RegionService regionService;
	
	@RequestMapping(value = "weatheInfo", method = RequestMethod.GET)
	public String weatherInfoController(Model model, @Param("doName") String doName){
		regionService.getZoneNumber(doName, model);
		return "weather";
		
	}
}
