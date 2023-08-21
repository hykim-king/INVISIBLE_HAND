package com.pcwk.ehr.dao;

import java.util.List;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.VO.ChartVO;
import com.pcwk.ehr.VO.SolutionVO;

@Repository
public interface SolutionDao {
	public List<ChartVO> SelectMaincategory(ChartVO inVO);
	
	public List<ChartVO> SelectSubcategory(ChartVO inVO);

	public List<SolutionVO> getSolutionContents(SolutionVO inVO);
	
}
