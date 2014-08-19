package com.sbaitproject.roadwith.roadboard.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sbaitproject.roadwith.roadboard.vo.RoadArticle;

@Repository
public class RiderBoardDaoImpl implements RoadBoardDao {

	private final static String NS = "Rider.";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insertRiderArticle(RoadArticle roadArticle) {
		sqlSession.insert(NS + "InsertRiderArticle", roadArticle);
	}

	@Override
	public int selectAllCount() {
		return sqlSession.selectOne(NS + "SelectAllCount");
	}

	@Override
	public List<RoadArticle> selectedRiderArticle(int firstRow, int endRow) {
		Map<String, Integer> params = new HashMap<String, Integer>();
		params.put("firstRow", firstRow);
		params.put("endRow", endRow);
		return sqlSession.selectList(NS + "SelectedRiderArticle", params);
	}

	@Override
	public RoadArticle selectedRiderArticleByArticleId(int articleId) {
		return sqlSession.selectOne(NS + "SelectedRiderArticleByArticleId", articleId);
	}

	@Override
	public void updateArticleHit(int articleId, int articleHit) {
		Map<String, Integer> params = new HashMap<String, Integer>();
		params.put("articleId", articleId);
		params.put("articleHit", articleHit);
		sqlSession.update(NS + "UpdateArticleHit", params);
	}

}
