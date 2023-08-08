package com.pcwk.ehr.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.VO.ChartVO;
import com.pcwk.ehr.dao.ChartDao;
import com.pcwk.ehr.service.ChartService;


@Service
public class ChartServiceImpl implements ChartService {
	
	@Autowired
	ChartDao chartDao;

	@Override
	public List<ChartVO> chartGraph(ChartVO inVO) {
		
		return chartDao.chartGraph(inVO);
	}

}
