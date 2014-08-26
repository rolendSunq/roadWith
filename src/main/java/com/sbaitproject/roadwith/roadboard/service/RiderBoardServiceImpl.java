package com.sbaitproject.roadwith.roadboard.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.google.gson.Gson;
import com.sbaitproject.roadwith.join.dao.UserContactDAO;
import com.sbaitproject.roadwith.roadboard.dao.RoadBoardDao;
import com.sbaitproject.roadwith.roadboard.vo.RiderJoinMembers;
import com.sbaitproject.roadwith.roadboard.vo.RoadArticle;
import com.sbaitproject.roadwith.roadboard.vo.RoadArticleList;

@Service
public class RiderBoardServiceImpl implements RoadBoardService {
	private final static int COUNT_PER_PAGE = 5;
	
	@Autowired
	private RoadBoardDao roadBoardDao;
	
	@Autowired
	private UserContactDAO userContactDAO;
	
	@Override
	public void insertArticle(RoadArticle roadArticle, HttpSession session) {
		String userId = (String) session.getAttribute("id");
		roadArticle.setWriterId(userId);
		String nickName = userContactDAO.selectPersonNickNameById(roadArticle.getWriterId());
		roadArticle.setWriterNickName(nickName);
		roadBoardDao.insertRiderArticle(roadArticle);
	}

	@Override
	public void getRiderArticleList(String pageNumber, Model model) {
		RoadArticleList roadArticleList = null;
		int totalArticleNumber = roadBoardDao.selectAllCount();
		int currentPageNumber = setDefaultPage(pageNumber);
		int totalPageCount = calculatePageCount(totalArticleNumber);
		int firstRow = ((firstRow = (currentPageNumber - 1) * (COUNT_PER_PAGE + 1)) == 0) ? 1 : firstRow;
		int endRow = firstRow + (COUNT_PER_PAGE - 1);
		
		if (endRow > totalArticleNumber){
			endRow = totalArticleNumber;
		}
		
		if (currentPageNumber == 0){
			roadArticleList =  new RoadArticleList();
		} else {
			List<RoadArticle> roadArticle = roadBoardDao.selectedRiderArticle(firstRow, endRow);
			roadArticleList =  new RoadArticleList(roadArticle, currentPageNumber, totalPageCount, firstRow, endRow);
		}
		
		if(roadArticleList.getTotalPageCount() > 0) {
			int beginPageNumber = ((beginPageNumber = (roadArticleList.getRequestPage() - 1) / ((10 * 10) + 1)) == 0) ? 1 : beginPageNumber;
			int endPageNumber = beginPageNumber + 9;
			
			if (endPageNumber > roadArticleList.getTotalPageCount()) 
				endPageNumber = roadArticleList.getTotalPageCount();
			
			model.addAttribute("beginPage", beginPageNumber);
			model.addAttribute("endPage", endPageNumber);
		}
		
		model.addAttribute("Articles", roadArticleList);
	}
	
	private int setDefaultPage(String pageNumber) {
		return (pageNumber == null || pageNumber.equals("0")) ? 1 : Integer.parseInt(pageNumber);
	}
	
	private int calculatePageCount(int totalArticleCount) {
		if (totalArticleCount == 0)	return 0;
		int pageCount = (int)Math.ceil((double)totalArticleCount / (double)COUNT_PER_PAGE);
		return (totalArticleCount % COUNT_PER_PAGE > 0) ? pageCount++ : pageCount;
	}

	@Override
	public void riderViewService(int articleId, Model model) {
		RoadArticle riderArticle  = roadBoardDao.selectedRiderArticleByArticleId(articleId);
		roadBoardDao.updateArticleHit(riderArticle.getArticleId(), riderArticle.getArticleHit() + 1);
		model.addAttribute("Article", riderArticle);
	}

	@Override
	public void joinMemberService(Gson gson, String json, HttpServletResponse response) {
		RiderJoinMembers riderJoinMembers = gson.fromJson(json, RiderJoinMembers.class);
		if (!isEntryMemberFullOver(riderJoinMembers.getArticleId())) {
			roadBoardDao.insertJoinMemberAdd(riderJoinMembers.getArticleId(), riderJoinMembers.getJoinMemberId());
			resultPrintWrite(response, "success");
		} else {
			resultPrintWrite(response, "failure");
		}
	}
	
	private boolean isEntryMemberFullOver(int articleId) {
		int entryMemberNumber = roadBoardDao.selectEntryMemberByArticleId(articleId);
		int joinMemberNumber = roadBoardDao.selectJoinMemberCount(articleId);
		return (entryMemberNumber == joinMemberNumber || entryMemberNumber < joinMemberNumber) ? true : false;
	}
	
	private void resultPrintWrite(HttpServletResponse response, String result) {
		Gson gson = new Gson();
		PrintWriter printWriter = null;
		
		response.setContentType("application/json");
		response.setContentType("text/xml; charset=UTF-8");
		response.setHeader("Cache-Control", "no-cache");
		
		String status = result;
		
		try {
			printWriter = new PrintWriter(response.getWriter());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		printWriter.println(gson.toJson(status));
		printWriter.flush();
		printWriter.close();
	}
}