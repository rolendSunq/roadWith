package com.sbaitproject.roadwith.roadboard.dao;

import java.util.List;

import com.sbaitproject.roadwith.roadboard.vo.RoadArticle;

public interface RoadBoardDao {
	public void insertRiderArticle(RoadArticle roadArticle);
	public int selectAllCount();
	public List<RoadArticle> selectedRiderArticle(int firstRow, int endRow);
	public RoadArticle selectedRiderArticleByArticleId(int articleId);
	public void updateArticleHit(int articleId, int articleHit);
}
