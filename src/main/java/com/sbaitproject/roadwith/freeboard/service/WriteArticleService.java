package com.sbaitproject.roadwith.freeboard.service;

import com.sbaitproject.roadwith.freeboard.vo.Article;

public class WriteArticleService {

	public Article write(WritingRequest writingRequest){
		
		Article article = writingRequest.toArticle();
		
		
		return article;
	}
	
}
