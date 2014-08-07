package com.sbaitproject.roadwith.freeboard.service;

import java.text.DecimalFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.sbaitproject.roadwith.freeboard.dao.ArticleDao;
import com.sbaitproject.roadwith.freeboard.vo.Article;
import com.sbaitproject.roadwith.freeboard.vo.ArticleListVo;

@Service
public class FreeBoardArticleServiceImpl implements FreeBoardArticleService {

	@Autowired
	private ArticleDao articleDao;
	
	@Override
	public ArticleListVo getArticleList(int requestPageNumber) {
		int totalArticleCount = articleDao.selectCount();	//  총 페이지수
		
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

	@Override
	public void writeFreeBoard(Article article) {
		DecimalFormat decimalFormat = new DecimalFormat("0000000000");
		int lastArticleNo = articleDao.selectLastArticleNo();
		article.setGroupId(lastArticleNo);
		article.setPostingDate(new Date());
		article.setSequenceNo(decimalFormat.format(lastArticleNo) + "999999");
		int insertResult = articleDao.insertArticle(article);
		if (insertResult == -1)
			System.out.println("실패");
		else 
			System.out.println("성공");
	}

	@Override
	public void selectArticle(int articleId, Model model) {
		Article article  = articleDao.selectById(articleId);
		int readCount = articleDao.selectReadCount(articleId);
		articleDao.updateReadCount(readCount + 1, articleId);
		model.addAttribute("article", article);
	}

}
