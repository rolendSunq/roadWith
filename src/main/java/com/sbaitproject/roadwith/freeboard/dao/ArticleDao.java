package com.sbaitproject.roadwith.freeboard.dao;

import java.util.List;

import com.sbaitproject.roadwith.freeboard.vo.Article;

 public interface ArticleDao {
	 
	public int selectCount();
	public List<Article> articleSelected(int firstRow, int endRow);
	public int insertArticle(Article article);
	public Article selectById(int articleId);
	void increaseReadCount(int articleId);
	public int update(Article article);
	public int selectLastArticleNo();
}
