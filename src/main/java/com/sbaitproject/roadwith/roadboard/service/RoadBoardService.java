package com.sbaitproject.roadwith.roadboard.service;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.sbaitproject.roadwith.roadboard.vo.RoadArticle;

public interface RoadBoardService {
	public void insertArticle(RoadArticle roadArticle, HttpSession session);
	public void getRiderArticleList(String currentPageNumber, Model model);
}
