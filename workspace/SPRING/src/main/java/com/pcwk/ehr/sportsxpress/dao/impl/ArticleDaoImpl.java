package com.pcwk.ehr.sportsxpress.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.sportsxpress.VO.ArticleVO;
import com.pcwk.ehr.sportsxpress.dao.ArticleDao;

@Repository
public class ArticleDaoImpl implements ArticleDao {
	final String NAMESPACE = "com.pcwk.ehr.sportsxpress";
	final String DOT = ".";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate; //DB연결 객체
	
	private final Logger LOG = LogManager.getLogger(getClass());

	public ArticleDaoImpl() {	//생성자
	
	}

	@Override
	public List<ArticleVO> ArticleInfo(ArticleVO getArticle) throws SQLException {
		List<ArticleVO> outList =  new ArrayList<>();
		
		String statement = this.NAMESPACE+DOT+"ArticleInfo";
		LOG.debug("-------------------------------------");
		LOG.debug("-statement-"+statement);
		LOG.debug("-------------------------------------");
		LOG.debug("2. param="+getArticle);
		outList = this.sqlSessionTemplate.selectList(statement, getArticle);
		
		for(ArticleVO vo: outList) {
			LOG.debug("=3. vo="+vo);
		}
		return outList;

	}
}
