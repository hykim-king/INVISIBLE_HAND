package com.pcwk.ehr.sportsxpress.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.sportsxpress.VO.VolleyballInfoVO;
import com.pcwk.ehr.sportsxpress.VO.VolleyballMatchVO;
import com.pcwk.ehr.sportsxpress.dao.VolleyballDao;

@Repository
public class VolleyballDaoImpl implements VolleyballDao {
	final String NAMESPACE = "com.pcwk.ehr.sportsxpress";
	final String DOT = ".";
	@Autowired
	SqlSessionTemplate sqlSessionTemplate; //DB연결 객체
	
	private final Logger LOG = LogManager.getLogger(getClass());
	
	@Override
	public List<VolleyballMatchVO> selectVolleyballMatchInfo(VolleyballMatchVO getMatch) throws SQLException {
		List<VolleyballMatchVO> outList =  new ArrayList<>();
		
		String statement = this.NAMESPACE+DOT+"selectVolleyballMatchInfo";
		LOG.debug("-------------------------------------");
		LOG.debug("-statement-"+statement);
		LOG.debug("-------------------------------------");
		LOG.debug("2. param="+getMatch);
		outList = this.sqlSessionTemplate.selectList(statement, getMatch);
		
		for(VolleyballMatchVO vo:outList) {
			LOG.debug("=3. vo="+vo);
		}
		return outList;
	}

	@Override
	public List<VolleyballInfoVO> selectVolleyballPlayerInfo(VolleyballInfoVO getPlayer) throws SQLException {
		List<VolleyballInfoVO> outList =  new ArrayList<>();
		
		String statement = this.NAMESPACE+DOT+"selectVolleyballPlayerInfo";
		LOG.debug("-------------------------------------");
		LOG.debug("-statement-"+statement);
		LOG.debug("-------------------------------------");
		LOG.debug("2. param="+getPlayer);
		outList = this.sqlSessionTemplate.selectList(statement, getPlayer);
		
		for(VolleyballInfoVO vo:outList) {
			LOG.debug("=3. vo="+vo);
		}
		return outList;
	}

}
