package com.pcwk.ehr.sportsxpress.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.sportsxpress.VO.TeamVO;
import com.pcwk.ehr.sportsxpress.dao.TeamDao;
import com.pcwk.ehr.sportsxpress.service.TeamService;

@Service
public class TeamServiceImpl implements TeamService {
	final Logger  LOG = LogManager.getLogger(getClass());

	@Autowired
	TeamDao teamDao;
	
	public TeamServiceImpl() {
		
	}
	@Override
	public List<TeamVO> getTeamInfo(TeamVO getTeam) throws SQLException {
		return teamDao.TeamInfo(getTeam);
	}

}
