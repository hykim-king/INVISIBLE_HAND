package com.pcwk.ehr.sportsxpress.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.sportsxpress.VO.VolleyballInfoVO;
import com.pcwk.ehr.sportsxpress.VO.VolleyballMatchVO;

public interface VolleyballService {

	/**
	 * 경기 정보 추출
	 * @param getMatch
	 * @return
	 * @throws SQLException
	 */
	List<VolleyballInfoVO> getPlayerInfo(VolleyballInfoVO getPlayer) throws SQLException;
	
	/**
	 * 경기 정보 추출
	 * @param getMatch
	 * @return
	 * @throws SQLException
	 */
	public List<VolleyballMatchVO> getMatchInfo(VolleyballMatchVO getMatch) throws SQLException;
	
}
