package com.sbaitproject.roadwith;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sbaitproject.roadwith.freeboard.service.FreeBoardArticleService;
import com.sbaitproject.roadwith.freeboard.vo.Article;

@Component("freeBoard")
@Controller
public class FreeBoardController {

	@Autowired
	FreeBoardArticleService freeBoardArticleService;
	
	@RequestMapping(value = "writeBoard", method = RequestMethod.GET)
	public String writeBoardController(Article article) {
		freeBoardArticleService.writeFreeBoard(article);
		System.out.println("success!!!!");
		return "freeBoard/freeMain";
	}
}
