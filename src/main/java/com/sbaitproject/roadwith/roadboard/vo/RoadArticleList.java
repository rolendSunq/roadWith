package com.sbaitproject.roadwith.roadboard.vo;

import java.util.Collections;
import java.util.List;

public class RoadArticleList {
	private List<RoadArticle> roadArticleList;
	private int requestPage;
	private int totalPageCount;
	private int startBlock;
	private int endBlock;
	private int blockRange;
	private int totalPagePerBlock;
	
	public RoadArticleList() {
		this(Collections.<RoadArticle>emptyList(), 0, 0, 0, 0, 0, 0);
	}
	
	public RoadArticleList(List<RoadArticle> roadArticleList, int requestPage, int totalPageCount, int startBlock, int endBlock, int blockRange, int totalPagePerBlock) {
		this.roadArticleList = roadArticleList;
		this.requestPage = requestPage;
		this.totalPageCount = totalPageCount;
		this.startBlock = startBlock;
		this.endBlock = endBlock;
		this.blockRange = blockRange;
	}
	
	public boolean isHasArticle(){
		return ! roadArticleList.isEmpty();
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

	public int getStartBlock() {
		return startBlock;
	}

	public void setStartBlock(int startBlock) {
		this.startBlock = startBlock;
	}

	public int getEndBlock() {
		return endBlock;
	}

	public void setEndBlock(int endBlock) {
		this.endBlock = endBlock;
	}

	public int getBlockRange() {
		return blockRange;
	}

	public void setBlockRange(int blockRange) {
		this.blockRange = blockRange;
	}

	public int getTotalPagePerBlock() {
		return totalPagePerBlock;
	}

	public void setTotalPagePerBlock(int totalPagePerBlock) {
		this.totalPagePerBlock = totalPagePerBlock;
	}

}
