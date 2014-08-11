package com.sbaitproject.roadwith;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.sbaitproject.roadwith.freeboard.service.FreeBoardArticleService;
import com.sbaitproject.roadwith.freeboard.vo.Article;

@Component("freeBoard")
@Controller
public class FreeBoardController {

	@Autowired
	FreeBoardArticleService freeBoardArticleService;
	
	@RequestMapping(value = "writeBoard", method = RequestMethod.GET)
	public ModelAndView writeBoardController(HttpServletResponse response, Article article) {
		response.setContentType("text/html; charset=UTF-8");
		freeBoardArticleService.writeFreeBoard(article);
		ModelAndView mav = new ModelAndView();
		mav.setView(new RedirectView("freeBoard")); 
		return mav;
	}
	
	@RequestMapping(value = "read_view", method = RequestMethod.GET)
	public String readArticle(Model model, @RequestParam("articleId") int articleId) {
		freeBoardArticleService.selectArticle(articleId, model);
		return "freeBoard/readView";
	}
	
	@RequestMapping(value = "putReply")
	public String putReplyController(Model model, @RequestParam("articleId") int articleId, Article replyArticle) {
		freeBoardArticleService.registrationReply(articleId, model, replyArticle);
		return "freeBoard/readView";
	}
}
