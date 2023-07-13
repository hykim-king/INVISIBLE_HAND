package com.pcwk.ehr.sportsxpress.dao;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.sportsxpress.VO.VolleyballInfoVO;
import com.pcwk.ehr.sportsxpress.VO.VolleyballMatchVO;

public interface VolleyballDao {
	
	/**
	 * 경기 정보 추출
	 * @param getMatch
	 * @return
	 * @throws SQLException
	 */
	List<VolleyballInfoVO> selectVolleyballPlayerInfo(VolleyballInfoVO getPlayer) throws SQLException;
	
	/**
	 * 경기 정보 추출
	 * @param getMatch
	 * @return
	 * @throws SQLException
	 */
	List<VolleyballMatchVO> selectVolleyballMatchInfo(VolleyballMatchVO getMatch) throws SQLException;
}
