package com.pcwk.ehr.sportsxpress.dao;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.sportsxpress.VO.GolfMatchVO;
import com.pcwk.ehr.sportsxpress.VO.GolfRankVO;

public interface GolfDao {

	/**
	 * 경기 정보 추출
	 * @param getMatch
	 * @return
	 * @throws SQLException
	 */
	List<GolfMatchVO> selectGolfMatchInfo(GolfMatchVO getMatch) throws SQLException;
	
	/**
	 * 선수 정보 추출
	 * @param getPlayer
	 * @return
	 * @throws SQLException
	 */
	List<GolfRankVO> selectGolfPlayerInfo(GolfRankVO getPlayer) throws SQLException;
	
	/**
	 * 선수 정보 추출
	 * @param getBestPlayer
	 * @return
	 * @throws SQLException
	 */
	List<GolfRankVO> selectBestGolfPlayerInfo(GolfRankVO getBestPlayer) throws SQLException;
}
