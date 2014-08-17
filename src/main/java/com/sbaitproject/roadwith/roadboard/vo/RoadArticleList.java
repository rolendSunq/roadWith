package com.sbaitproject.roadwith.roadboard.vo;

import java.util.Collections;
import java.util.List;

public class RoadArticleList {
	private List<RoadArticle> roadArticleList;
	private int requestPage;
	private int totalPageCount;
	private int startRow;
	private int endRow;
	
	public RoadArticleList() {
		this(Collections.<RoadArticle>emptyList(), 0, 0, 0, 0);
	}
	
	public RoadArticleList(List<RoadArticle> roadArticleList, int requestPage, int totalPageCount, int startRow, int endRow) {
		this.roadArticleList = roadArticleList;
		this.requestPage = requestPage;
		this.totalPageCount = totalPageCount;
		this.startRow = startRow;
		this.endRow = endRow;
	}
	
	public List<RoadArticle> getRoadArticleList() {
		return roadArticleList;
	}

	public void setRoadArticleList(List<RoadArticle> roadArticleList) {
		this.roadArticleList = roadArticleList;
	}

	public int getRequestPage() {
		return requestPage;
	}

	public void setRequestPage(int requestPage) {
		this.requestPage = requestPage;
	}

	public int getTotalPageCount() {
		return totalPageCount;
	}

	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

	public int getStartRow() {
		return startRow;
	}

	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}

}
