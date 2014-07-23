package com.sbaitproject.roadwith;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	
	@RequestMapping(value = "signin", method = RequestMethod.GET)
	public String signin(Model model) {
		return "signin";
	}
	
	@RequestMapping(value = "signup", method = RequestMethod.GET)
	public String signup(Model model) {
		return "signup";
	}
	
	@RequestMapping(value = "freeBoard", method = RequestMethod.GET)
	public String freeBoard(Model model) {
		return "freeBoard/freeMain";
	}
	
	@RequestMapping(value = "notice", method = RequestMethod.GET)
	public String notice(Model model) {
		return "notice";
	}
	
	@RequestMapping(value = "contact", method = RequestMethod.GET)
	public String contact(Model model) {
		return "contact";
	}
	
	@RequestMapping(value = "about", method = RequestMethod.GET)
	public String about(Model model) {
		return "about";
	}
	
}
