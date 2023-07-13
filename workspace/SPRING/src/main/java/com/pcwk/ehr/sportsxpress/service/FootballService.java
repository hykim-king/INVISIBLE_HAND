package com.pcwk.ehr.sportsxpress.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.sportsxpress.VO.FootballInfoVO;
import com.pcwk.ehr.sportsxpress.VO.FootballMatchVO;
import com.pcwk.ehr.sportsxpress.VO.FootballRecordVO;

public interface FootballService {
	
	public List<FootballInfoVO> getPlayerInfo(FootballInfoVO getplayer) throws SQLException;
	
	public List<FootballMatchVO> getFootballMatchInfo(FootballMatchVO getMatch) throws SQLException;
	
	public List<FootballRecordVO> getFootballRecordInfo(FootballRecordVO getRecord) throws SQLException;

}
