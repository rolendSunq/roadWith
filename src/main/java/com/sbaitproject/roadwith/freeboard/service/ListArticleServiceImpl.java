package com.sbaitproject.roadwith.freeboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sbaitproject.roadwith.freeboard.dao.ArticleDao;
import com.sbaitproject.roadwith.freeboard.vo.Article;
import com.sbaitproject.roadwith.freeboard.vo.ArticleListVo;

@Service
public class ListArticleServiceImpl implements ListArticleService {

	@Autowired
	private ArticleDao articleDao;
	
	@Override
	public ArticleListVo getArticleList(int requestPageNumber) {
		int totalArticleCount = articleDao.selectCount();	//  총 페이지수 구함
		
		if (totalArticleCount == 0){
			return new ArticleListVo();
		}
		
		int totalPageCount = calculateTotalPageCount(totalArticleCount);
		int firstRow = (requestPageNumber - 1) * COUNT_PER_PAGE + 1;
		int endRow = firstRow + COUNT_PER_PAGE - 1;
		
		if (endRow > totalArticleCount){
			endRow = totalArticleCount;
		}
		
		List<Article> articleList = articleDao.articleSelected(firstRow, endRow);
		return new ArticleListVo(articleList, requestPageNumber, totalPageCount, firstRow, endRow);
	}

	@Override
	public int calculateTotalPageCount(int totalArticleCount) {
		if (totalArticleCount == 0){
			return 0;
		}
		int pageCount = totalArticleCount / COUNT_PER_PAGE;
		if (totalArticleCount % COUNT_PER_PAGE  > 0){
			pageCount++;
		}
		return pageCount;
	}
	
	

}
