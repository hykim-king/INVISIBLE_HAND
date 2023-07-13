package com.pcwk.ehr.sportsxpress.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.sportsxpress.VO.ArticleVO;

public interface ArticleService {

	public List<ArticleVO> getArticleInfo(ArticleVO getMatch) throws SQLException;
}
