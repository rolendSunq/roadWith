package com.sbaitproject.roadwith;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Component("rideGroup")
@Controller
public class RiderController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "MakeRiderGroup", method = RequestMethod.POST)
	public String makeRiderGroup(Model model) {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		model.addAttribute("currentDate", sdf.format(date).toString());
		model.addAttribute("section", "Rider Group");
		
		return "commons/makeGroup";
	}
}
