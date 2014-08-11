package com.sbaitproject.roadwith.freeboard.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sbaitproject.roadwith.freeboard.vo.Article;
import com.sbaitproject.roadwith.signservice.ContactServicesImpl;

@Repository
public class ArticleDaoImpl implements ArticleDao {

	@Autowired
	private SqlSession session;
	private static final Logger logger = LoggerFactory.getLogger(ContactServicesImpl.class);
	// end must be point . 
	private static final String NS = "freeboard.";
	
	@Override
	public int selectCount() {
		return session.selectOne(NS + "SelectCountAll");
	}

	@Override
	public int insertArticle(Article article) {
		return session.insert(NS + "InsertArticle", article);
	}
 
	@Override
	public List<Article> articleSelected(int firstRow, int endRow) {
		Map<String, Integer> param = new HashMap<String, Integer>();
		firstRow = firstRow - 1;
		endRow = endRow - firstRow + 1;
		param.put("firstRow", firstRow);
		param.put("endRow", endRow);
		return session.selectList(NS + "ArticleSelected", param);
	}

	@Override
	public Article selectById(int articleId) {
		return session.selectOne(NS + "SelectById", articleId);
	}

	@Override
	public void increaseReadCount(int articleId) {
		
		
	}

	@Override
	public int update(Article article) {
		
		return 0;
	}

	@Override
	public int selectLastArticleNo() {
		return session.selectOne(NS + "SelectLastArticleNo");
	}

	@Override
	public void updateReadCount(int readCount, int articleId) {
		Map<String, Integer> param = new HashMap<String, Integer>();
		param.put("readCount", readCount);
		param.put("articleId", articleId);
		session.update(NS + "UpdateReadCount", param);
	}

	@Override
	public int selectReadCount(int articleId) {
		return session.selectOne(NS + "SelectReadCount", articleId);
	}

	@Override
	public String selectLastSeqNumber(String maxNumber, String minNumber) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("maxNumber", maxNumber);
		param.put("minNumber", minNumber);
		return session.selectOne(NS + "SelectLastSequenceNumber", param);
	}

	@Override
	public List<Article> selectGroupIdByReply(int group_id) {
		return session.selectList(NS + "SelectGroupIdByReply", group_id);
	}

}
