package com.pcwk.ehr.service;

import java.util.List;

import com.pcwk.ehr.VO.ChartVO;

public interface ChartService {
	
	public List<ChartVO> chartGraph(ChartVO inVO);
		
	public List<ChartVO> chart02Graph(ChartVO inVO);
	
	public List<ChartVO> chart03Graph(ChartVO inVO);
	
	public List<ChartVO> chart04Graph(ChartVO inVO);
	
	public List<ChartVO> soultionChart(ChartVO inVO);
}
