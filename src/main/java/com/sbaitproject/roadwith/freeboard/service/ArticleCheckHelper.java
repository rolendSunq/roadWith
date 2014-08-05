package com.sbaitproject.roadwith.freeboard.service;

import com.sbaitproject.roadwith.freeboard.dao.ArticleDao;
import com.sbaitproject.roadwith.freeboard.vo.Article;

public class ArticleCheckHelper {
	public Article checkExistAndPassword(int articleId, String password) throws  InvalidPasswordException{
		ArticleDao articleDao = null;
		Article article = articleDao.selectById(articleId);
		if (!checkPassword(article.getPassword(), password)) {
			throw new InvalidPasswordException("암호오류");
		}
		return article;
	}
	
	private boolean checkPassword(String realPassword, String userInputPassword){
		if (realPassword == null) {
			return false;
		}
		if (realPassword.length() == 0) {
			return false;
		}
		return realPassword.equals(userInputPassword);
	}
	
}
