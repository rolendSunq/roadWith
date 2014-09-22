package com.sbaitproject.roadwith.board.commons;

public class Paging {
	private final int PAGE_PER_BLOCK;
	private final int BLOCK_RANGE;
	private int totalRecord;
	private int totalBlockPerPage;
	private int startBlock;
	private int endBlock;
	private int currentPageNumber;
	private int startRow;
	private int endRow;
	
	public Paging() {
		totalRecord = totalBlockPerPage = startBlock = endBlock = currentPageNumber = startRow = endRow = 0;
		PAGE_PER_BLOCK = 5;
		BLOCK_RANGE = 5;
	}
	
	public Paging(String pageString, int totalArticleNumber) {
		this();
		totalRecord = totalArticleNumber;
		calculatePaging(pageString);
	}
	
	public Paging(String pageString, int totalArticleNumber, int pagePerBlock, int blockRange) {
		totalRecord = totalBlockPerPage = startBlock = endBlock = currentPageNumber = startRow = endRow = 0;
		totalRecord = totalArticleNumber;
		PAGE_PER_BLOCK = pagePerBlock;
		BLOCK_RANGE = blockRange;
		calculatePaging(pageString);
	}
	
	private void calculatePaging(String pageString) {
		currentPageNumber = (pageString == null || pageString.equals("0")) ? 1 : Integer.parseInt(pageString);
		totalBlockPerPage = (totalRecord / PAGE_PER_BLOCK) + 1;
		int temp = (currentPageNumber % BLOCK_RANGE == 0) ? currentPageNumber / BLOCK_RANGE : (currentPageNumber / BLOCK_RANGE) + 1;
		startBlock = (BLOCK_RANGE * (temp - 1)) + 1;
		startRow =  (PAGE_PER_BLOCK * (currentPageNumber - 1)) + 1;
		endBlock = BLOCK_RANGE * temp;
		endBlock = (totalBlockPerPage < endBlock) ? totalBlockPerPage : endBlock;
		endRow = currentPageNumber * PAGE_PER_BLOCK;
		endRow = (endRow % PAGE_PER_BLOCK == 0) ? endRow : (totalRecord = (totalRecord == 0) ? 1 : totalRecord); 
	}

	public int getTotalRecord() {
		return totalRecord;
	}

	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}

	public int getTotalBlockPerPage() {
		return totalBlockPerPage;
	}

	public void setTotalBlockPerPage(int totalBlockPerPage) {
		this.totalBlockPerPage = totalBlockPerPage;
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

	public int getCurrentPageNumber() {
		return currentPageNumber;
	}

	public void setCurrentPageNumber(int currentPageNumber) {
		this.currentPageNumber = currentPageNumber;
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

	public int getPAGE_PER_BLOCK() {
		return PAGE_PER_BLOCK;
	}

	public int getBLOCK_RANGE() {
		return BLOCK_RANGE;
	}

	@Override
	public String toString() {
		StringBuffer stringBuffer = new StringBuffer();
		stringBuffer.append("totalRecord: " + totalRecord + "\r\n");
		stringBuffer.append("totalBlockPerPage: " + totalBlockPerPage + "\r\n");
		stringBuffer.append("startBlock: " + startBlock + "\r\n");
		stringBuffer.append("endBlock: " + endBlock + "\r\n");
		stringBuffer.append("currentPageNumber: " + currentPageNumber + "\r\n");
		stringBuffer.append("startRow: " + startRow + "\r\n");
		stringBuffer.append("endRow: " + endRow + "\r\n");
		return stringBuffer.toString();
	}
}



