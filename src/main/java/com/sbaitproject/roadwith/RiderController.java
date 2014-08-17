package com.sbaitproject.roadwith;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sbaitproject.roadwith.roadboard.service.RoadBoardService;
import com.sbaitproject.roadwith.roadboard.vo.RoadArticle;
import com.sbaitproject.roadwith.roadboard.vo.RoadArticleList;

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
		return "forward:MakeRiderGroup";
	}
	
	@RequestMapping(value = "RiderBoard", method = RequestMethod.POST)
	public String riderBoardController(Model model, @RequestParam(value="p", required=false) int currentPageNumber) {
		
		RoadArticleList roadArticleList = roadBoardService.getRiderArticleList(currentPageNumber);
		
		if(roadArticleList.getTotalPageCount() > 0) {
			int beginPageNumber = (roadArticleList.getRequestPage() - 1) / ((10 * 10) + 1);
			int endPageNumber = beginPageNumber + 9;
			
			if (endPageNumber > roadArticleList.getTotalPageCount()) 
				endPageNumber = roadArticleList.getTotalPageCount();

			model.addAttribute("beginPage", beginPageNumber);
			model.addAttribute("endPage", endPageNumber);
		}
		
		model.addAttribute("Articles", roadArticleList);
		
		return "freeBoard/freeMain";
	}
}
