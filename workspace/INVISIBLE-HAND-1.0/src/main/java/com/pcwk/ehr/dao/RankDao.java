package com.pcwk.ehr.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.pcwk.ehr.VO.RankVO;

public interface RankDao {
	
	Map<String, Integer> getRank(RankVO inVO) throws SQLException;
	
	
	
}
