package com.pcwk.ehr.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.pcwk.ehr.VO.RankVO;

public interface RankDao {
	
	//1. 랭킹 정보 main 화면에 출력할 로직
	List<RankVO> doGetRanking(RankVO inVO) throws SQLException;
	

	int doUpdatePrevious(RankVO inVO) throws SQLException;
	
	int doUpdateCurrent(RankVO inVO) throws SQLException;
	
}
