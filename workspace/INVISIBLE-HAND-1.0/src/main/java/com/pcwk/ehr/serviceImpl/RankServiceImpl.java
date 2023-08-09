package com.pcwk.ehr.serviceImpl;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.pcwk.ehr.VO.RankVO;
import com.pcwk.ehr.dao.RankDao;
import com.pcwk.ehr.service.RankService;

public class RankServiceImpl implements RankService {
	
	@Autowired
	RankDao rankDao;
	
	//1. 랭킹 정보 main 화면에 출력할 로직
	public List<RankVO> doGetRanking(RankVO inVO) throws SQLException{
			
		return rankDao.doGetRanking(inVO);
	}

}
