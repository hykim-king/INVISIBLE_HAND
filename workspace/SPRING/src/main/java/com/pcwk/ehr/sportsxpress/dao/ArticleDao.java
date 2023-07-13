package com.pcwk.ehr.sportsxpress.dao;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.sportsxpress.VO.ArticleVO;

public interface ArticleDao {

	/**
	 * 경기 정보 추출
	 * @param getMatch
	 * @return
	 * @throws SQLException
	 */
	List<ArticleVO> ArticleInfo(ArticleVO getRecord) throws SQLException;
}
