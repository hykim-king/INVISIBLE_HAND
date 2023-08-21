package com.pcwk.ehr.serviceImpl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pcwk.ehr.VO.RankVO;
import com.pcwk.ehr.dao.RankDao;
import com.pcwk.ehr.service.RankService;

@Service
public class RankServiceImpl implements RankService {
	final Logger LOG = LogManager.getLogger(getClass());
	
	@Autowired
	RankDao rankDao;
	
	//1. 랭킹 정보 main 화면에 출력할 로직
	@Override
	public List<RankVO> doGetRanking(RankVO inVO) throws SQLException{
		List<RankVO> rankList = new ArrayList<>();
		
		if(inVO.getMainCategory() == null) {
			LOG.debug("메인 카테고리 값이 없습니다");
		}else {
			 String mainCategory = inVO.getMainCategory();
			if("비제조업".equals(mainCategory)) {
				rankList =  rankDao.doGetRanking(inVO);
			}
			else if("제조업".equals(mainCategory)) {
				rankList = rankDao.doGetRanking2(inVO);
			}
		}
		return rankList ;
	}
	
	//@Scheduled(cron = "0 * * * * *") //1분마다
    @Scheduled(cron = "0 0 0 1 * ?")
	public void updateRanking() throws SQLException {
    	RankVO inVO = new RankVO();
    	
		rankDao.doUpdatePrevious(inVO);
		
		rankDao.doUpdateCurrent(inVO);
		
	}

    //4. 특정 행동에 따른 Score에 +1 하는 로직  
	@Override
	public int doUpdateScore(RankVO inVO) throws SQLException {

		return rankDao.doUpdateScore(inVO);
	}

	
	
	
}
