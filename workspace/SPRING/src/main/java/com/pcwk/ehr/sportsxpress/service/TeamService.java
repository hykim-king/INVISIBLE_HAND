package com.pcwk.ehr.sportsxpress.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.sportsxpress.VO.TeamVO;

public interface TeamService {

	
	public List<TeamVO> getTeamInfo(TeamVO getMatch) throws SQLException;
}
