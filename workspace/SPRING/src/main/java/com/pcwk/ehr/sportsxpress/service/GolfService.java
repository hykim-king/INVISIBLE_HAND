package com.pcwk.ehr.sportsxpress.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.sportsxpress.VO.GolfMatchVO;
import com.pcwk.ehr.sportsxpress.VO.GolfRankVO;

public interface GolfService {
	
	public List<GolfMatchVO> getMatchInfo(GolfMatchVO getMatch) throws SQLException;

	public List<GolfRankVO> getPlayerInfo(GolfRankVO getPlayer) throws SQLException;
	
	public List<GolfRankVO> getBestPlayerInfo(GolfRankVO getPlayer) throws SQLException;
}
