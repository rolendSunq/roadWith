package com.sbaitproject.roadwith.freeboard.dao;

import java.util.List;

import com.sbaitproject.roadwith.freeboard.vo.Article;

 public interface ArticleDao {
	 
	public int selectCount();
	public List<Article> articleSelected(int firstRow, int endRow);
	public int insertArticle(Article article);
	public Article selectById(int articleId);
	public int selectLastArticleNo();
	public void updateReadCount(int readCount, int articleId);
	public int selectReadCount(int articleId);
	public String selectLastSeqNumber(String maxNumber, String minNumber);
	public List<Article> selectGroupIdByReply(int group_id);
	public void updateArticle(Article article);
	public int selectGroupIdByArticleId(int articleId);
	public int findPasswdByAticleId(String articleId);
	public void deletArticle(int articleId);
}
