package com.pcwk.ehr.sportsxpress.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.sportsxpress.VO.ArticleVO;
import com.pcwk.ehr.sportsxpress.dao.ArticleDao;
import com.pcwk.ehr.sportsxpress.service.ArticleService;

@Service
public class ArticleServiceImpl implements ArticleService {
	final Logger  LOG = LogManager.getLogger(getClass());

	@Autowired
	ArticleDao articleDao;
	
	public ArticleServiceImpl() {
		
	}
	
	@Override
	public List<ArticleVO> getArticleInfo(ArticleVO getMatch) throws SQLException {	
		return articleDao.ArticleInfo(getMatch);
	}

}
