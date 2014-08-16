package com.sbaitproject.roadwith;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sbaitproject.roadwith.freeboard.service.FreeBoardArticleService;
import com.sbaitproject.roadwith.freeboard.vo.ArticleListVo;
import com.sbaitproject.roadwith.signservice.ContactServices;
import com.sbaitproject.roadwith.vo.Person;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	ContactServices contactServices;
	
	@Autowired
	FreeBoardArticleService freeBoardArticleService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		return "index";
	}
	
	@RequestMapping(value = "signin", method = RequestMethod.GET)
	public ModelAndView signin() {
		return new ModelAndView("signin");
	}
	
	@RequestMapping(value = "signin", method = RequestMethod.POST)
	public String signinPost(Person person, HttpSession session) {
		String result = null;
		String url = "signin";
		boolean section = true;
		
		if (person.getId() != null) 
			result = contactServices.checkSignin(section, person);
		else 
			result = contactServices.checkSignin(section = false, person);
		
		
		if (result.equals("success") && section == true){
			session.setAttribute("id", person.getId());
			url = "/riders/riderBoard";
		}
		else if (result.equals("success") && section == false) {
			String obtainID = contactServices.getIdByEmail(person.getEmail());
			session.setAttribute("id", obtainID);
			url = "/riders/riderBoard";
		}
			
		return url;
	}
	
	@RequestMapping(value ="signout", method = RequestMethod.GET)
	public String signout(HttpSession session) {
		session.invalidate();
		return "index";
	}
	
	@RequestMapping(value = "signup", method = RequestMethod.GET)
	public String signup(Model model) {
		return "signup";
	}
	
	@RequestMapping(value = "freeBoard", method = RequestMethod.GET)
	public String freeBoard(Model model, @RequestParam(value="p", required=false) String pageString) {
		int pageNumber = 0;
		if (pageString == null)
			pageNumber = 1;
		else pageNumber = Integer.parseInt(pageString);
		
		ArticleListVo articleListVo = freeBoardArticleService.getArticleList(pageNumber);
		
		if(articleListVo.getTotalPageCount() > 0) {
			int beginPageNumber = (articleListVo.getRequestPage() - 1) / 10 * 10 + 1;
			int endPageNumber = beginPageNumber + 9;
			
			if (endPageNumber > articleListVo.getTotalPageCount()) 
				endPageNumber = articleListVo.getTotalPageCount();

			model.addAttribute("beginPage", beginPageNumber);
			model.addAttribute("endPage", endPageNumber);
		}
		
		model.addAttribute("Articles", articleListVo);
		
		return "freeBoard/freeMain";
	}
	
	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String writeForm(Model model) {
		return "freeBoard/writeForm";
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
	
	@RequestMapping(value = "weather", method = RequestMethod.GET)
	public String weather(Model model) {
		return "weather";
	}
	
	@RequestMapping("roadContent")
	public String roadContentController() {
		return "riders/riderBoard";
	}
}
