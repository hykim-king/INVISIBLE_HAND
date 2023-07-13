package com.pcwk.ehr.sportsxpress.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.sportsxpress.VO.FootballInfoVO;
import com.pcwk.ehr.sportsxpress.VO.FootballMatchVO;
import com.pcwk.ehr.sportsxpress.VO.FootballRecordVO;
import com.pcwk.ehr.sportsxpress.dao.FootballDao;

@Repository
public class FootballDaoImpl implements FootballDao {

	final String NAMESPACE = "com.pcwk.ehr.sportsxpress";
	final String DOT = ".";

	@Autowired
	SqlSessionTemplate sqlSessionTemplate; // DB연결 객체

	private final Logger lg = LogManager.getLogger(getClass());

	
	public FootballDaoImpl() {}

	@Override
	public List<FootballInfoVO> selectFootballInfo(FootballInfoVO getplayer) throws SQLException {
		List<FootballInfoVO> outList = new ArrayList<>();


		String statement = this.NAMESPACE + DOT + "selectFootballInfo";

		lg.debug("-------------------------------------");
		lg.debug("-statement-" + statement);
		lg.debug("-------------------------------------");
		lg.debug("2. param=" + getplayer);
		outList = this.sqlSessionTemplate.selectList(statement, getplayer);

		for (FootballInfoVO vo : outList) {
			lg.debug("=3. vo=" + vo);

		}

		return outList;
	}

	@Override
	public List<FootballMatchVO> selectFootballMatchInfo(FootballMatchVO getMatch) throws SQLException {
		List<FootballMatchVO> outList = new ArrayList<>();


		String statement = this.NAMESPACE + DOT + "selectFootballMatchInfo";


		lg.debug("-------------------------------------");
		lg.debug("-statement-" + statement);
		lg.debug("-------------------------------------");
		lg.debug("2. param=" + getMatch);
		outList = this.sqlSessionTemplate.selectList(statement, getMatch);

		for (FootballMatchVO vo : outList) {
			lg.debug("=3. vo=" + vo);

		}

		return outList;
	}


	
	@Override
	public List<FootballRecordVO> FootballRecordInfo(FootballRecordVO getMatch) throws SQLException {
		List<FootballRecordVO> outList =  new ArrayList<>();
		String temp = null;
		String statement = this.NAMESPACE+DOT+"footballRecordInfo";
		lg.debug("-------------------------------------");
		lg.debug("-statement-"+statement);
		lg.debug("-------------------------------------");
		lg.debug("2. param="+getMatch);
		outList = this.sqlSessionTemplate.selectList(statement, temp);
		for(FootballRecordVO vo:outList) {
			lg.debug("=3. vo="+vo);
		}
		return outList;
	}



}