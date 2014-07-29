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
import com.sbaitproject.roadwith.freeboard.vo.ArticleListVo;
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
		return session.selectOne(NS + "SelectAll");
	}

	@Override
	public int insert(Article article) {
		return 0;
	}
 
	@Override
	public List<Article> articleSelected(int firstRow, int endRow) {
		Map<String, Integer> parameters = new HashMap<String, Integer>();
		parameters.put("firstRow", firstRow - 1);
		parameters.put("endRow", endRow - firstRow +1);
		return session.selectList(NS + "articleSelected", parameters);
	}

}
