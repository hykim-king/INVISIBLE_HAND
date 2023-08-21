package com.pcwk.ehr.serviceImpl;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.VO.ChartVO;
import com.pcwk.ehr.VO.RankVO;
import com.pcwk.ehr.VO.SolutionVO;
import com.pcwk.ehr.service.SolutionService;
import com.pcwk.ehr.dao.SolutionDao;

@Service
public class SolutionServiceImpl implements SolutionService {
	
	@Autowired
	SolutionDao solutionDao;
	
	@Override
	public List<ChartVO> SelectMaincategory(ChartVO inVO) {
		return solutionDao.SelectMaincategory(inVO);
	}

	@Override
	public List<ChartVO> SelectSubcategory(ChartVO inVO) {
		return solutionDao.SelectSubcategory(inVO);
	}

	public List<SolutionVO> getSolutionContents(SolutionVO inVO) {
		return solutionDao.getSolutionContents(inVO);
	}
}
