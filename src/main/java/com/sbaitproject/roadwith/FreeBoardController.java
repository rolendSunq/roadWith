package com.sbaitproject.roadwith;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sbaitproject.roadwith.freeboard.vo.Article;

@Component("freeBoard")
public class FreeBoardController {

	@RequestMapping(value = "writeBoard", method = RequestMethod.GET)
	public String writeBoardController(Article article) {
		return null;
	}
}
