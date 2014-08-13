package com.sbaitproject.roadwith;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sbaitproject.roadwith.signup.service.UserService;
import com.sbaitproject.roadwith.vo.Person;

@Component("signUpInfo")
@Controller
public class SignUpController{
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "signUp", method = RequestMethod.POST)
	public String signUp(Model model, Person person) {
		userService.registrationUser(person);
		return "signUp/signup";
	}
	
	@RequestMapping(value = "signUp", method = RequestMethod.GET)
	public String enterSignPage() {
		return "signUp/signup";
	}
	
	@RequestMapping(value = "welcome", method = RequestMethod.GET)
	public String welcome(Model model) {
		return "signUp/welcome";
	}
	
	@RequestMapping(value = "searchId", method = RequestMethod.GET)
	public String searchIdController(@RequestParam(value="id") String id) {
		//String result = userService.searchId(id);
		return "signUp/signup";
	}
	
	@RequestMapping(value = "ajaxCheckUserId", method = RequestMethod.POST)
	public String ajaxCheckUserIdController(@RequestBody String json, Model model) {
		String data = json;
		String userId = data.substring(3, data.length());
		userService.searchId(userId, model);
//		System.out.println("userId : " + result);
		return "signUp/signup";
	}
}