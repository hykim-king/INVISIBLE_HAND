package com.pcwk.ehr.sportsxpress.dao;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.sportsxpress.VO.RecordVO;

public interface RecordDao {
	/**
	 * 경기 정보 추출
	 * @param getMatch
	 * @return
	 * @throws SQLException
	 */
	List<RecordVO> RecordInfo(RecordVO getMatch) throws SQLException;
}
