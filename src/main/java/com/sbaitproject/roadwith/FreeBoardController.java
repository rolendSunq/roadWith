package com.sbaitproject.roadwith;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.sbaitproject.roadwith.freeboard.service.FreeBoardArticleService;
import com.sbaitproject.roadwith.freeboard.vo.Article;
import com.sbaitproject.roadwith.freeboard.vo.User;

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
	
	@RequestMapping(value = "putReply", method = RequestMethod.GET)
	public String putReplyController(Model model, @RequestParam("articleId") int articleId, Article replyArticle) {
		freeBoardArticleService.registrationReply(articleId, model, replyArticle);
		return "freeBoard/readView";
	}
	
	@RequestMapping(value = "updateArticle", method = RequestMethod.GET)
	public String updateArticleController(Model model, Article article) {
		freeBoardArticleService.updateArticleService(article, model);
		return "freeBoard/readView";
		
	}
	
	@RequestMapping(value = "ajaxSearchPassword", method = RequestMethod.POST)
	public void ajaxSearchPasswordController(@RequestBody String json, HttpServletResponse response) throws UnsupportedEncodingException {
		System.out.println(json);
		String reJson = null;
		reJson = URLDecoder.decode(json, "UTF-8");
		System.out.println(reJson);
		Gson gson = new Gson();
		User user = gson.fromJson(reJson, User.class);
		//freeBoardArticleService.findPasswdService(articleId, response);
	}
}
