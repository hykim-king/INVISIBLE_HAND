package com.pcwk.ehr.daoImpl;

import java.sql.SQLException;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.VO.LikesVO;
import com.pcwk.ehr.cmn.PcwkLoger;
import com.pcwk.ehr.dao.LikesDAO;

@Repository
public class LikesDAOImpl implements LikesDAO, PcwkLoger {
	final String NAMESPACE = "com.pcwk.ehr.likes";
	final String DOT       = ".";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public int doCheckLike(LikesVO likesVO) throws SQLException {
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│doCheckLike                   │");
		LOG.debug("│likesVO               	      │"+likesVO);
		LOG.debug("│statement                     │"+NAMESPACE+DOT+"doCheckLike");
		LOG.debug("└──────────────────────────────┘");
		return sqlSessionTemplate.selectOne(NAMESPACE+DOT+"doCheckLike", likesVO);
	}

	@Override
	public int insertLike(LikesVO likesVO) throws SQLException {
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│insertLike                    │");
		LOG.debug("│likesVO               	      │"+likesVO);
		LOG.debug("│statement                     │"+NAMESPACE+DOT+"insertLike");
		LOG.debug("└──────────────────────────────┘");
		return sqlSessionTemplate.insert(NAMESPACE+DOT+"insertLike", likesVO);
	}

	@Override
	public int deleteLike(LikesVO likesVO) throws SQLException {
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│deleteLike                    │");
		LOG.debug("│likesVO               	      │"+likesVO);
		LOG.debug("│statement                     │"+NAMESPACE+DOT+"deleteLike");
		LOG.debug("└──────────────────────────────┘");	
		return sqlSessionTemplate.delete(NAMESPACE+DOT+"deleteLike", likesVO);
	}

	@Override
	public int doLikesCount(LikesVO likesVO) throws SQLException {
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│doLikesCount                  │");
		LOG.debug("│likesVO               	      │"+likesVO);
		LOG.debug("│statement                     │"+NAMESPACE+DOT+"doLikesCount");
		LOG.debug("└──────────────────────────────┘");	
		return sqlSessionTemplate.selectOne(NAMESPACE+DOT+"doLikesCount", likesVO);
	}

}
