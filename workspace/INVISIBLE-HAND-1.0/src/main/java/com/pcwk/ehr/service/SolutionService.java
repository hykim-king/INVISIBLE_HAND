package com.pcwk.ehr.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.VO.ChartVO;
import com.pcwk.ehr.VO.RankVO;

public interface SolutionService {
	
	public List<ChartVO> SelectMaincategory(ChartVO inVO);

	public List<ChartVO> SelectSubcategory(ChartVO inVO);
	

}
