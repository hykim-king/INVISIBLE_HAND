package com.pcwk.ehr.sportsxpress.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.sportsxpress.VO.BasketballInfoVO;
import com.pcwk.ehr.sportsxpress.VO.BasketballMatchVO;
import com.pcwk.ehr.sportsxpress.VO.BasketballRecordVO;
import com.pcwk.ehr.sportsxpress.dao.BasketballDao;


@Repository
public class BasketballDaoImpl implements BasketballDao {
	final String NAMESPACE = "com.pcwk.ehr.sportsxpress";
	final String DOT = ".";
	@Autowired
	SqlSessionTemplate sqlSessionTemplate; //DB연결 객체
	
	private final Logger LOG = LogManager.getLogger(getClass());
	
	public BasketballDaoImpl() {
	}



	@Override
	public List<BasketballInfoVO> selectBasketballPlayerInfo(BasketballInfoVO getPlayer) throws SQLException {
	List<BasketballInfoVO> outList =  new ArrayList<>();
		
		String statement = this.NAMESPACE+DOT+"selectBasketballPlayerInfo";
		LOG.debug("-------------------------------------");
		LOG.debug("-statement-"+statement);
		LOG.debug("-------------------------------------");
		LOG.debug("2. param="+getPlayer);
		outList = this.sqlSessionTemplate.selectList(statement, getPlayer);
		
		for(BasketballInfoVO vo: outList) {
			LOG.debug("=3. vo="+vo);
		}
		return outList;
	}

	@Override
	public List<BasketballMatchVO> selectBasketballMatchInfo(BasketballMatchVO getMatch) throws SQLException {
		List<BasketballMatchVO> outList =  new ArrayList<>();
		
		String statement = this.NAMESPACE+DOT+"selectBasketballMatchInfo";
		LOG.debug("-------------------------------------");
		LOG.debug("-statement-"+statement);
		LOG.debug("-------------------------------------");
		LOG.debug("2. param="+getMatch);
		outList = this.sqlSessionTemplate.selectList(statement, getMatch);
		
		for(BasketballMatchVO vo:outList) {
			LOG.debug("=3. vo="+vo);
		}
		return outList;
	}
	
	public List<BasketballRecordVO> basketballRecordInfo(BasketballRecordVO getRecord) throws SQLException {
		List<BasketballRecordVO> outList =  new ArrayList<>();
		
		String statement = this.NAMESPACE+DOT+"basketballRecordInfo";
		LOG.debug("-------------------------------------");
		LOG.debug("-statement-"+statement);
		LOG.debug("-------------------------------------");
		LOG.debug("2. param="+getRecord);
		outList = this.sqlSessionTemplate.selectList(statement, getRecord);
		
		for(BasketballRecordVO vo: outList) {
			LOG.debug("=3. vo="+vo);
		}
		return outList;
	}
	
	public List<BasketballInfoVO> bestPlayerInfo(BasketballInfoVO getRecord) throws SQLException {
		List<BasketballInfoVO> outList =  new ArrayList<>();
		
		String statement = this.NAMESPACE+DOT+"selectBasketballBestPlayerInfo";
		LOG.debug("-------------------------------------");
		LOG.debug("-statement-"+statement);
		LOG.debug("-------------------------------------");
		LOG.debug("2. param="+getRecord);
		outList = this.sqlSessionTemplate.selectList(statement, getRecord);
		
		for(BasketballInfoVO vo: outList) {
			LOG.debug("=3. vo="+vo);
		}
		return outList;
	}

}
