package com.sbaitproject.roadwith.freeboard.service;

import org.springframework.ui.Model;

import com.sbaitproject.roadwith.freeboard.vo.Article;
import com.sbaitproject.roadwith.freeboard.vo.ArticleListVo;

public interface FreeBoardArticleService {
	public static final int COUNT_PER_PAGE = 10;
	public ArticleListVo getArticleList(int requestPageNumber);	// 글 목록 보여주기
	public int calculateTotalPageCount(int totalArticleCount);  // 전체 페이지 개수를 구함
	public void writeFreeBoard(Article article);			  	// 글 등록
	public void selectArticle(int articleId, Model model);	   	// 선택된 글 보여주기
}
