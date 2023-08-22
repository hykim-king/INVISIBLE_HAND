package com.pcwk.ehr.dao;

import java.util.List;

import com.pcwk.ehr.VO.ChartVO;

public interface ChartDao {
	
	public List<ChartVO> chartGraphAvg(ChartVO inVO);	
	public List<ChartVO> chartGraph(ChartVO inVO);
	
	public List<ChartVO> chart02GraphAvg(ChartVO inVO);	
	public List<ChartVO> chart02Graph(ChartVO inVO);

	public List<ChartVO> chart03GraphAvg(ChartVO inVO);	
	public List<ChartVO> chart03Graph(ChartVO inVO);
	
	public List<ChartVO> chart04GraphAvg(ChartVO inVO);	
	public List<ChartVO> chart04Graph(ChartVO inVO);
	
	
	public List<ChartVO> soultionChart(ChartVO inVO);
}
