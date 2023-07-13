package com.pcwk.ehr.sportsxpress.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.sportsxpress.VO.BaseballMatchVO;
import com.pcwk.ehr.sportsxpress.VO.BaseballRecordVO;

public interface BaseballService {

	public List<BaseballMatchVO> getMatchInfo(BaseballMatchVO getMatch) throws SQLException;
	
	public List<BaseballMatchVO> getSelectBaseballRecord(BaseballMatchVO getMatch) throws SQLException;
	
	public List<BaseballRecordVO> getBaseballRecordInfo(BaseballRecordVO getRecord) throws SQLException;
	
}
