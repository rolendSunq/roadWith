package com.sbaitproject.roadwith.region.service;

import org.springframework.ui.Model;

public interface RegionService {
	public void getZoneNumber(String DoName, Model model);
	public void sendWeatherUrl(Model model, String doName, String localName, String weatherUrl);
}
