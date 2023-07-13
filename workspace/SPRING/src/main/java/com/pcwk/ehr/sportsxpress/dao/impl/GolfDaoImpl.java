package com.pcwk.ehr.sportsxpress.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.sportsxpress.VO.GolfMatchVO;
import com.pcwk.ehr.sportsxpress.VO.GolfRankVO;
import com.pcwk.ehr.sportsxpress.dao.GolfDao;

@Repository
public class GolfDaoImpl implements GolfDao {
	final String NAMESPACE = "com.pcwk.ehr.sportsxpress";
	final String DOT = ".";
	@Autowired
	SqlSessionTemplate sqlSessionTemplate; //DB연결 객체
	
	private final Logger LOG = LogManager.getLogger(getClass());
	
	@Override
	public List<GolfMatchVO> selectGolfMatchInfo(GolfMatchVO getMatch) throws SQLException {
		List<GolfMatchVO> outList =  new ArrayList<>();
		
		String statement = this.NAMESPACE+DOT+"selectGolfMatchInfo";
		LOG.debug("-------------------------------------");
		LOG.debug("-statement-"+statement);
		LOG.debug("-------------------------------------");
		LOG.debug("2. param="+getMatch);
		outList = this.sqlSessionTemplate.selectList(statement, getMatch);
		
		for(GolfMatchVO vo:outList) {
			LOG.debug("=3. vo="+vo);
		}
		return outList;
	}

	@Override
	public List<GolfRankVO> selectGolfPlayerInfo(GolfRankVO getPlayer) throws SQLException {
	List<GolfRankVO> outList =  new ArrayList<>();
		
		String statement = this.NAMESPACE+DOT+"selectGolfPlayerInfo";
		LOG.debug("-------------------------------------");
		LOG.debug("-statement-"+statement);
		LOG.debug("-------------------------------------");
		LOG.debug("2. param="+getPlayer);
		outList = this.sqlSessionTemplate.selectList(statement, getPlayer);
		
		for(GolfRankVO vo: outList) {
			LOG.debug("=3. vo="+vo);
		}
		return outList;
	}
	
	@Override
	public List<GolfRankVO> selectBestGolfPlayerInfo(GolfRankVO getPlayer) throws SQLException {
	List<GolfRankVO> outList =  new ArrayList<>();
		
		String statement = this.NAMESPACE+DOT+"selectBestGolfPlayerInfo";
		LOG.debug("-------------------------------------");
		LOG.debug("-statement-"+statement);
		LOG.debug("-------------------------------------");
		LOG.debug("2. param="+getPlayer);
		outList = this.sqlSessionTemplate.selectList(statement, getPlayer);
		
		for(GolfRankVO vo: outList) {
			LOG.debug("=3. vo="+vo);
		}
		return outList;
	}

}
