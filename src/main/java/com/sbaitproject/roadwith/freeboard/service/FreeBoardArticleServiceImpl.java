package com.sbaitproject.roadwith.freeboard.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.google.gson.Gson;
import com.sbaitproject.roadwith.freeboard.dao.ArticleDao;
import com.sbaitproject.roadwith.freeboard.vo.Article;
import com.sbaitproject.roadwith.freeboard.vo.ArticleListVo;

@Service
public class FreeBoardArticleServiceImpl implements FreeBoardArticleService {

	@Autowired
	private ArticleDao articleDao;
	
	@Override
	public ArticleListVo getArticleList(int requestPageNumber) {
		List<Article> articleList = new ArrayList<Article>();
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
		
		articleList = articleDao.articleSelected(firstRow, endRow);
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
		System.out.println("lastArticleNo : " + lastArticleNo);
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
		List<Article> replyArticleList = articleDao.selectGroupIdByReply(article.getGroupId());
		model.addAttribute("article", article);
		model.addAttribute("replyArticleList", replyArticleList);
	}

	@Override
	public void registrationReply(int articleId, Model model, Article replyArticle) {
		Article article = articleDao.selectById(articleId);
		String maxNumber = article.getSequenceNo();
		String minNumber = getSearchMinSeqNumber(article);
		String lastChildSeq = articleDao.selectLastSeqNumber(maxNumber, minNumber);
		String sequenceNumber = getSequenceNumber(article, lastChildSeq);
		replyArticle.setGroupId(article.getGroupId());
		replyArticle.setSequenceNo(sequenceNumber);
		replyArticle.setPassword("1234");
		replyArticle.setPostingDate(new Date());
		int insertResult = articleDao.insertArticle(replyArticle);
		if (insertResult == -1)
			System.out.println("실패");
		else 
			System.out.println("성공");
		List<Article> replyArticleList = articleDao.selectGroupIdByReply(article.getGroupId());
		model.addAttribute("article", article);
		model.addAttribute("replyArticleList", replyArticleList);
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
		
		if (levelValue == 0)		decUnit = 10000L;
		else if (levelValue == 1) 	decUnit = 100L;
		else if (levelValue == 2) 	decUnit = 1L;
		
		String sequenceNumber = null;
		
		DecimalFormat decimalFormat = new DecimalFormat("0000000000000000");
		
		if (lastChildSeq == null)	// 답변글이 없음
			sequenceNumber = decimalFormat.format((levelValue - decUnit) * -1);
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
		
		return sequenceNumber;
	}

	@Override
	public void getReplyList(int group_id, Model model) {
		List<Article> replyArticle = articleDao.selectGroupIdByReply(group_id);
		model.addAttribute("replyList", replyArticle);
	}

	@Override
	public void updateArticleService(Article article, Model model) {
		articleDao.updateArticle(article);
		Article newArticle = articleDao.selectById(article.getArticleId());
		System.out.println("group_id: " + newArticle.getGroupId());
		List<Article> replyArticleList = articleDao.selectGroupIdByReply(newArticle.getGroupId());
		model.addAttribute("article", newArticle);
		model.addAttribute("replyArticleList", replyArticleList);
	}

	@Override
	public void findPasswdService(String articleId, HttpServletResponse response) {
		Gson gson = new Gson();
		PrintWriter printWriter = null;
		
		response.setContentType("application/json");
		response.setContentType("text/xml; charset=UTF-8");
		response.setHeader("Cache-Control", "no-cache");
		
		String result = articleDao.findPasswdByAticleId(articleId);
		
		System.out.println(result);
		
		try {
			printWriter = new PrintWriter(response.getWriter());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		printWriter.println(gson.toJson(result));
		printWriter.flush();
		printWriter.close();
		
	}

	

}
