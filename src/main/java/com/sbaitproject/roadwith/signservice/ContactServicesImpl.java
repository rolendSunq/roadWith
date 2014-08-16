package com.sbaitproject.roadwith.signservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.sbaitproject.roadwith.join.dao.UserContactDAO;
import com.sbaitproject.roadwith.vo.Person;

@Service
public class ContactServicesImpl implements ContactServices {

	@Autowired
	UserContactDAO userContactDAO;

	@Override
	public String checkSignin(boolean section, Person userInfo) {
		int idNumber, emailNumber, passwordNumber;
		idNumber = emailNumber = passwordNumber = 0;
		
		if (section == true) {
			idNumber = userContactDAO.getPersonID(userInfo.getId());
		} else {
			emailNumber = userContactDAO.getPersonEmail(userInfo.getEmail());
		}
		
		passwordNumber = userContactDAO.getPersonPassword(userInfo.getPw());
		
		if (section == true) {
			if (idNumber == 0 || passwordNumber == 0)
				return "failure";
			else if (idNumber != 0 && passwordNumber != 0)
				return "success";
		} else {
			if (emailNumber == 0 || passwordNumber == 0)
				return "failure";
			else if (emailNumber != 0 || passwordNumber != 0)
				return "success";
		}
		return "failure";
	}

	@Override
	public String getIdByEmail(String userEmail) {
		return userContactDAO.getPersonIdByEmail(userEmail);
	}

	
}