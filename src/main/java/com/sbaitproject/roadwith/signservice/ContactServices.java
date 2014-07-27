package com.sbaitproject.roadwith.signservice;

import com.sbaitproject.roadwith.vo.Person;

public interface ContactServices {
	public String checkSignin(boolean section, Person userInfo);
	public String getIdByEmail(String userEmail);
}
