package com.pcwk.ehr.service;

import java.sql.SQLException;
import java.util.Collection;
import java.util.List;

import com.pcwk.ehr.VO.ChartVO;
import com.pcwk.ehr.VO.RankVO;
import com.pcwk.ehr.VO.SolutionVO;

public interface SolutionService {
	
	public List<ChartVO> SelectMaincategory(ChartVO inVO);

	public List<ChartVO> SelectSubcategory(ChartVO inVO);
	
	public List<SolutionVO> getSolutionContents(SolutionVO inVO);

	public List<SolutionVO> returnRadioContents(List<Double> radioArr);

	public List<SolutionVO> returnTextContents(List<String> textArr);

	public List<SolutionVO> returnCheckContents(List<String> checkArr);

	public List<SolutionVO> returnScoreContents(ChartVO chartInVO, String totalScore);
}
