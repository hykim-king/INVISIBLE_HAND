package com.pcwk.ehr.sportsxpress.dao;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.sportsxpress.VO.TeamVO;

public interface TeamDao {
	/**
	 * 경기 정보 추출
	 * @param getMatch
	 * @return
	 * @throws SQLException
	 */

	List<TeamVO> TeamInfo(TeamVO getTeam) throws SQLException;
}
