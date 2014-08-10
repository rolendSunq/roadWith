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
		model.addAttribute("articleId", articleId);
	}

	@Override
	public void registrationReply(int articleId, Model model, Article replyArticle) {
		Article article = articleDao.selectById(articleId);
		String maxNumber = article.getSequenceNo();
		String minNumber = getSearchMinSeqNumber(article);
		int lastChildSeq = articleDao.selectLastSeqNumber(maxNumber, minNumber);
		String sequenceNumber = getSequenceNumber(article, String.valueOf(lastChildSeq));
		article.setSequenceNo(sequenceNumber);
		article.setPostingDate(new Date());
		int insertResult = articleDao.insertArticle(article);
		if (insertResult == -1)
			System.out.println("실패");
		else 
			System.out.println("성공");
		model.addAttribute("article", article);
		model.addAttribute("articleId", articleId);
	}
	
	private String getSearchMinSeqNumber(Article article) {
		DecimalFormat decimalFormat = new DecimalFormat("0000000000000000");
		long seqValue = Long.parseLong(article.getSequenceNo());
		long minValue = 0;
		
		if (article.getLevel() == 0)
			minValue = seqValue / 1000000L * 1000000L;
		else if (article.getLevel() == 1)
			minValue = seqValue / 10000L * 10000L;
		else if (article.getLevel() == 2)
			minValue = seqValue / 100L * 100L;
			
		return decimalFormat.format(minValue);
	}

	private String getSequenceNumber(Article article, String lastChildSeq) {
		long seqNumber = Long.parseLong(article.getSequenceNo());
		int levelValue = article.getLevel();
		
		long decUnit = 0;
		
		if (levelValue == 0) 	  decUnit = 10000L;
		else if (levelValue == 1) decUnit = 100L;
		else if (levelValue == 2) decUnit = 1L;
		
		String sequenceNumber = null;
		
		DecimalFormat decimalFormat = new DecimalFormat("0000000000000000");
		
		if (lastChildSeq == null)	// 답변글이 없음
			sequenceNumber = decimalFormat.format(levelValue - decUnit);
		else {
			String orderOfLastChildSeq = null;
			
			if (levelValue == 0) {
				orderOfLastChildSeq = lastChildSeq.substring(10, 12);
				sequenceNumber = lastChildSeq.substring(0, 12) + "9999";
			} else if (levelValue == 1) {
				orderOfLastChildSeq = lastChildSeq.substring(12, 14);
				sequenceNumber = lastChildSeq.substring(0, 14) + "99";
			} else if (levelValue == 2) {
				orderOfLastChildSeq = lastChildSeq.substring(14, 16);
				sequenceNumber = lastChildSeq;
			}
			
			if (orderOfLastChildSeq.equals("00")) ;
			
			long seq = Long.parseLong(sequenceNumber) - decUnit;
			sequenceNumber = decimalFormat.format(seq);
		}
		
		return lastChildSeq;
	}
}
