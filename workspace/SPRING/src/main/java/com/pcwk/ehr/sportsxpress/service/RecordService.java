package com.pcwk.ehr.sportsxpress.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.sportsxpress.VO.RecordVO;

public interface RecordService {

	public List<RecordVO> getRecordInfo(RecordVO getRecord) throws SQLException;
}
