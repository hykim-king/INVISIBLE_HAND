package com.pcwk.ehr.sportsxpress.dao;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.sportsxpress.VO.TajaInfoVO;

public interface TajaDao {

	/**
	 * 타자 정보 추출
	 * @param getPlayer
	 * @return
	 * @throws SQLException
	 */
	List<TajaInfoVO> selectTajaInfo(TajaInfoVO getPlayer) throws SQLException;
}
