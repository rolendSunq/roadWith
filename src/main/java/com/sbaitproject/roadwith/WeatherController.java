package com.sbaitproject.roadwith;

import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sbaitproject.roadwith.region.service.RegionService;

@Component("weathers")
@Controller
public class WeatherController {

	@Autowired
	RegionService regionService;
	
	@RequestMapping(value = "weatherInfo", method = RequestMethod.GET)
	public String weatherInfoController(HttpServletResponse response, Model model, @Param("doName") String doName){
		response.setContentType("text/html; charset=UTF-8"); 
		regionService.getZoneNumber(doName, model);
		return "weather";
		
	}

	@RequestMapping(value = "supportUrl", method = RequestMethod.GET)
	public String supportUrlContoller(HttpServletResponse response, Model model,
			@Param("doName") String doName, 
			@RequestParam(value = "hLoName", required=false) String localName,
			@RequestParam(value = "weatherUrl", required=false) String weatherUrl){
		response.setContentType("text/html; charset=UTF-8");
		regionService.sendWeatherUrl(model, doName, localName, weatherUrl);
		return "weather";
	}
}
