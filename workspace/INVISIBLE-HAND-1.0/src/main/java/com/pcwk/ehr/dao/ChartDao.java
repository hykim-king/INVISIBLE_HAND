package com.pcwk.ehr.dao;

import java.util.List;

import com.pcwk.ehr.VO.ChartVO;

public interface ChartDao {
	
	public List<ChartVO> chartGraph(ChartVO inVO);

}
