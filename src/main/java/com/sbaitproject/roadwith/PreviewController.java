package com.sbaitproject.roadwith;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Component("previewGroup")
@Controller
public class PreviewController {

	@RequestMapping(value = "preview", method = RequestMethod.GET)
	public String preview(Model model) {
		return "tutorial/preview";
	}
	
	@RequestMapping(value = "preview2", method = RequestMethod.GET)
	public String preview2(Model model) {
		return "tutorial/preview2";
	}
	
	@RequestMapping(value = "preview3", method = RequestMethod.GET)
	public String preview3(Model model) {
		return "tutorial/preview3";
	}
	
	@RequestMapping(value = "preview4", method = RequestMethod.GET)
	public String preview4(Model model) {
		return "tutorial/preview4";
	}
}
