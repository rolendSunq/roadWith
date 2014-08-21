package com.sbaitproject.roadwith;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.sbaitproject.roadwith.roadboard.service.RoadBoardService;
import com.sbaitproject.roadwith.roadboard.vo.RoadArticle;

@Component("rideGroup")
@Controller
public class RiderController {

	@Autowired
	private RoadBoardService roadBoardService;
	
	@RequestMapping(value = "MakeRiderGroup", method = RequestMethod.POST)
	public String makeRiderGroup(Model model) {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		model.addAttribute("currentDate", sdf.format(date).toString());
		model.addAttribute("section", "Rider Group");
		return "commons/makeGroup";
	}
	
	@RequestMapping(value = "MakeRiderArticle", method = RequestMethod.POST)
	public String makeRiderArticleController(RoadArticle roadArticle, HttpSession session) {
		roadBoardService.insertArticle(roadArticle, session);
		return "forward:RiderBoard";
	}
	
	@RequestMapping(value = "RiderBoard")
	public String riderBoardController(Model model, @RequestParam(value="p", required=false) String currentPageNumber) {
		roadBoardService.getRiderArticleList(currentPageNumber, model);
		return "riders/riderBoard";
	}
	
	@RequestMapping(value = "RiderView")
	public String riderViewController(Model model, @RequestParam(value = "articleId") int articleId) {
		roadBoardService.riderViewService(articleId, model);
		return "riders/riderView";
	}
	
	@RequestMapping(value = "JoinMember", method = RequestMethod.POST)
	public void joinMemberController(@RequestBody String json, HttpSession session) {
		Gson gson = new Gson();
		roadBoardService.joinMemberService(gson, session);
	}
}
