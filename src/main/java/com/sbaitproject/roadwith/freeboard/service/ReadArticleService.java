package com.sbaitproject.roadwith.freeboard.service;
import com.sbaitproject.roadwith.freeboard.dao.ArticleDao;
import com.sbaitproject.roadwith.freeboard.dao.ArticleDaoImpl;
import com.sbaitproject.roadwith.freeboard.vo.Article;


public class ReadArticleService {
	
		private static ReadArticleService instance = new ReadArticleService();
		public static ReadArticleService getInstance() {
			return instance;
		}
		
		public Article readArticle(int articleId){
			return selectArticle(articleId, true);
		}
		
		private Article selectArticle(int articleId, boolean increaseCount){
			ArticleDao articleDao = null;
			Article article = articleDao.selectById(articleId);
			articleDao.increaseReadCount(articleId);
			return article;
		}
		
	

		public Article getArticle(int articleId){
			return selectArticle(articleId, false);
		}
}
