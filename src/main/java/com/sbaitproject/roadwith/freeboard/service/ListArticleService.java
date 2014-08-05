package com.sbaitproject.roadwith.freeboard.service;

import com.sbaitproject.roadwith.freeboard.vo.ArticleListVo;

public interface ListArticleService {
	public static final int COUNT_PER_PAGE = 10;
	public ArticleListVo getArticleList(int requestPageNumber);
	public int calculateTotalPageCount(int totalArticleCount); // 전체 페이지 개수를 구함
}
