package com.pcwk.ehr.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.pcwk.ehr.VO.RankVO;

public interface RankService {
	
	Map<String, Integer> getRank(RankVO inVO) throws SQLException;

}
