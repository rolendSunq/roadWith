package com.sbaitproject.roadwith.freeboard.vo;

import java.util.Collections;
import java.util.List;

public class ArticleListVo {

	private List<Article> articleList;
	private int requestPage;
	private int totalPageCount;
	private int startRow;
	private int endRow;
	
	public ArticleListVo(){
		this(Collections.<Article>emptyList(), 0, 0, 0, 0);
	}
	
	public ArticleListVo(List<Article> articleList, int requestPage,	int totalPageCount, int startRow, int endRow) {
		this.articleList = articleList;
		this.requestPage = requestPage;
		this.totalPageCount = totalPageCount;
		this.startRow = startRow;
		this.endRow = endRow;
	}
	
	public List<Article> getArticleList(){
		return articleList;
	}
	
	public boolean isHasArticle(){
		return ! articleList.isEmpty();
	}
	
	public int getRequestPage(){
		return requestPage;
	}
	
	public int getTotalPageCount(){
		return totalPageCount;
	}
	
	public int getStartRow(){
		return startRow;
	}
	
	public int getEndRow(){
		return endRow;
	}
	
}
