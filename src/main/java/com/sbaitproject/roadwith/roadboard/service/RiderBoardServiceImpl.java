package com.sbaitproject.roadwith.roadboard.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.sbaitproject.roadwith.join.dao.UserContactDAO;
import com.sbaitproject.roadwith.roadboard.dao.RoadBoardDao;
import com.sbaitproject.roadwith.roadboard.vo.RoadArticle;
import com.sbaitproject.roadwith.roadboard.vo.RoadArticleList;

@Service
public class RiderBoardServiceImpl implements RoadBoardService {
	private final static int COUNT_PER_PAGE = 10;
	
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
		
		System.out.println("totalArticleNumber: " + totalArticleNumber);
		int totalPageCount = calculatePageCount(totalArticleNumber);
		int firstRow = (currentPageNumber - 1) * (COUNT_PER_PAGE + 1);
		int endRow = firstRow + (COUNT_PER_PAGE - 1);
		System.out.println("totalPC" + totalPageCount);
		System.out.println("firstRow" + firstRow);
		System.out.println("endRow" + endRow);
		
		if (endRow > totalArticleNumber){
			endRow = totalArticleNumber;
		}
		System.out.println("endRow" + endRow);
		
		if (currentPageNumber == 0){
			roadArticleList =  new RoadArticleList();
		} else {
			List<RoadArticle> roadArticle = roadBoardDao.selectedRiderArticle(firstRow, endRow);
			roadArticleList =  new RoadArticleList(roadArticle, currentPageNumber, totalPageCount, firstRow, endRow);
		}
		
		if(roadArticleList.getTotalPageCount() > 0) {
			int beginPageNumber = (roadArticleList.getRequestPage() - 1) / ((10 * 10) + 1);
			int endPageNumber = beginPageNumber + 9;
			System.out.println("beginPageNumber" + beginPageNumber);
			System.out.println("endPageNumber" + endPageNumber);
			if (endPageNumber > roadArticleList.getTotalPageCount()) 
				endPageNumber = roadArticleList.getTotalPageCount();

			System.out.println("endPageNumber" + endPageNumber);
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
		int pageCount = totalArticleCount / COUNT_PER_PAGE;
		return (totalArticleCount % COUNT_PER_PAGE > 0) ? pageCount++ : pageCount;
	}
}
