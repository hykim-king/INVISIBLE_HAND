package com.pcwk.ehr.sportsxpress.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.sportsxpress.VO.GolfMatchVO;
import com.pcwk.ehr.sportsxpress.VO.GolfRankVO;
import com.pcwk.ehr.sportsxpress.dao.GolfDao;
import com.pcwk.ehr.sportsxpress.service.GolfService;

@Service
public class GolfServiceImpl implements GolfService {

	final Logger  LOG = LogManager.getLogger(getClass());
	
	@Autowired
	GolfDao golfDao;
	
	public GolfServiceImpl() {

	}

	@Override
	public List<GolfMatchVO> getMatchInfo(GolfMatchVO getMatch) throws SQLException {
		
		return golfDao.selectGolfMatchInfo(getMatch);
	}

	@Override
	public List<GolfRankVO> getPlayerInfo(GolfRankVO getPlayer) throws SQLException {
		
		return golfDao.selectGolfPlayerInfo(getPlayer);
	}
	
	@Override
	public List<GolfRankVO> getBestPlayerInfo(GolfRankVO getPlayer) throws SQLException {
		
		return golfDao.selectBestGolfPlayerInfo(getPlayer);
	}
	
}
