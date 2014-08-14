package com.sbaitproject.roadwith;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.servlet.http.HttpServletResponse;
import javax.xml.crypto.URIDereferencer;

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
		return "signUp/welcome";
	}
	
	@RequestMapping(value = "signUp", method = RequestMethod.GET)
	public String enterSignPage() {
		return "signUp/signup";
	}
	
	@RequestMapping(value = "searchId", method = RequestMethod.GET)
	public String searchIdController(@RequestParam(value="id") String id) {
		//String result = userService.searchId(id);
		return "signUp/signup";
	}
	
	@RequestMapping(value = "ajaxCheckUserId", method = RequestMethod.POST)
	public void ajaxCheckUserIdController(@RequestBody String json, HttpServletResponse response) {
		String data = json;
		String userId = data.substring(3, data.length());
		userService.searchId(userId, response);
	}
	
	@RequestMapping(value = "ajaxCheckUserEmail", method = RequestMethod.POST)
	public void ajaxCheckUserEmailController(@RequestBody String json, HttpServletResponse response) {
		String data = json;
		String userEmail = data.substring(3, data.length());
		System.out.println("userEmail: " + userEmail);
		userService.searchEmail(userEmail, response);
	}
	@RequestMapping(value = "ajaxFindIdByEmail", method = RequestMethod.POST)
	public void ajaxFindIdByEmailController(@RequestBody String json, HttpServletResponse response) {
		String data = json;
		String userEmail = data.substring(6, data.length());
		
		try {
			userEmail = URLDecoder.decode(userEmail, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		System.out.println("userEmail: " + userEmail);
		userService.findIdService(userEmail, response);
	}
	
	@RequestMapping(value = "ajaxFindPasswdById", method = RequestMethod.POST)
	public void ajaxFindPasswdByIdController(@RequestBody String json, HttpServletResponse response) {
		String data = json;
		String userId = data.substring(3, data.length());

		System.out.println("userId: " + userId);
		userService.findPasswdService(userId, response);
	}
}