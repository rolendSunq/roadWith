package com.sbaitproject.roadwith.roadboard.vo;

public class RoadArticle {
	private String content;
	private int articleHit;
	private int replyHit;
	private String planDay;
	private String startTime;
	private String aimTime;
	private int entryMember;
	private int joinMember;
	private String startSpot;
	private String goalSpot;
	private String writerId;
	private String writerNickName;
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getArticleHit() {
		return articleHit;
	}
	public void setArticleHit(int articleHit) {
		this.articleHit = articleHit;
	}
	public int getReplyHit() {
		return replyHit;
	}
	public void setReplyHit(int replyHit) {
		this.replyHit = replyHit;
	}
	public String getPlanDay() {
		return planDay;
	}
	public void setPlanDay(String planDay) {
		this.planDay = planDay;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getAimTime() {
		return aimTime;
	}
	public void setAimTime(String aimTime) {
		this.aimTime = aimTime;
	}
	public int getEntryMember() {
		return entryMember;
	}
	public void setEntryMember(int entryMember) {
		this.entryMember = entryMember;
	}
	public int getJoinMember() {
		return joinMember;
	}
	public void setJoinMember(int joinMember) {
		this.joinMember = joinMember;
	}
	public String getStartSpot() {
		return startSpot;
	}
	public void setStartSpot(String startSpot) {
		this.startSpot = startSpot;
	}
	public String getGoalSpot() {
		return goalSpot;
	}
	public void setGoalSpot(String goalSpot) {
		this.goalSpot = goalSpot;
	}
	public String getWriterId() {
		return writerId;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}
	public String getWriterNickName() {
		return writerNickName;
	}
	public void setWriterNickName(String writerNickName) {
		this.writerNickName = writerNickName;
	}
	
	public String getSplitStartSpot() {
		String[] str = new String(startSpot).split(" ");
		return str[(str.length-1)-1] + " " +str[(str.length-1)];
	}
	
	public String getSplitGoalSpot() {
		String[] str = new String(goalSpot).split(" ");
		return str[(str.length-1)-1] + " " + str[(str.length-1)];
	}
}
