package com.pcwk.ehr.sportsxpress.dao;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.sportsxpress.VO.FootballInfoVO;
import com.pcwk.ehr.sportsxpress.VO.FootballMatchVO;
import com.pcwk.ehr.sportsxpress.VO.FootballRecordVO;

public interface FootballDao {
	
	public List<FootballInfoVO> selectFootballInfo(FootballInfoVO getPlayer) throws SQLException;
	
	public List<FootballMatchVO> selectFootballMatchInfo(FootballMatchVO getMatch) throws SQLException;
	
	List<FootballRecordVO> FootballRecordInfo(FootballRecordVO getMatch) throws SQLException;
}
