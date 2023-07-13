package com.pcwk.ehr.sportsxpress.dao;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.sportsxpress.VO.TusuInfoVO;

public interface TusuDao {

	/**
	 * 투수 정보 추출
	 * @param getMatch
	 * @return
	 * @throws SQLException
	 */
	List<TusuInfoVO> selectTusuInfo (TusuInfoVO getPlayer) throws SQLException;
	
}