package com.sbaitproject.roadwith.freeboard.dao;

import java.util.List;

import com.sbaitproject.roadwith.freeboard.vo.Article;

 public interface ArticleDao {
	public  int selectCount();
	public  List<Article> articleSelected(int firstRow, int endRow);
	public  int insert(Article article);
	
}
