package com.sbaitproject.roadwith.riderboard.vo;

import java.sql.Timestamp;

public class RiderArticle {
	private int seq;			// 글 번호
	private String writer;		// 작성자
	private String subject;		// 글 제목
	private String content;		// 글 내용
	private String readySpot;	// 모임 장소
	private String endSpot;		// 도착지
	private Timestamp logTime;	// 작성 일자
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getReadySpot() {
		return readySpot;
	}
	public void setReadySpot(String readySpot) {
		this.readySpot = readySpot;
	}
	public String getEndSpot() {
		return endSpot;
	}
	public void setEndSpot(String endSpot) {
		this.endSpot = endSpot;
	}
	public Timestamp getLogTime() {
		return logTime;
	}
	public void setLogTime(Timestamp logTime) {
		this.logTime = logTime;
	}
	
}