package com.pcwk.ehr.sportsxpress.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.sportsxpress.VO.VolleyballInfoVO;
import com.pcwk.ehr.sportsxpress.VO.VolleyballMatchVO;
import com.pcwk.ehr.sportsxpress.dao.VolleyballDao;
import com.pcwk.ehr.sportsxpress.service.VolleyballService;

@Service
public class VolleyballServiceImpl implements VolleyballService {

	final Logger  LOG = LogManager.getLogger(getClass());
	
	@Autowired
	VolleyballDao volleyballDao;

	public VolleyballServiceImpl() {

	}

	@Override
	public List<VolleyballInfoVO> getPlayerInfo(VolleyballInfoVO getPlayer) throws SQLException {

		return volleyballDao.selectVolleyballPlayerInfo(getPlayer);
	}
	
	@Override
	public List<VolleyballMatchVO> getMatchInfo(VolleyballMatchVO getMatch) throws SQLException {
		
		return volleyballDao.selectVolleyballMatchInfo(getMatch);
	}

}
