package com.sbaitproject.roadwith.freeboard.service;

import com.sbaitproject.roadwith.freeboard.dao.ArticleDao;
import com.sbaitproject.roadwith.freeboard.vo.Article;

public class UpdateArticleService {

	public Article update(UpdateRequest updateRequest) throws ArticleNotFoundException, InvalidPasswordException{
		
		ArticleCheckHelper checkHelper = new ArticleCheckHelper();
		checkHelper.checkExistAndPassword(updateRequest.getArticleId(), updateRequest.getPassword());
		
		Article updatedArticle = new Article();
		
		ArticleDao articleDao = null;
		int updateCount = articleDao.update(updatedArticle);
		
		Article article = articleDao.selectById(updateRequest.getArticleId());
		
		return article;
		
	}
	
}
