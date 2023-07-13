package com.pcwk.ehr.sportsxpress.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.sportsxpress.VO.BasketballInfoVO;
import com.pcwk.ehr.sportsxpress.VO.BasketballMatchVO;
import com.pcwk.ehr.sportsxpress.VO.BasketballRecordVO;
import com.pcwk.ehr.sportsxpress.dao.BasketballDao;
import com.pcwk.ehr.sportsxpress.service.BasketballService;

@Service
public class BasketballServiceImpl implements BasketballService {

	final Logger  LOG = LogManager.getLogger(getClass());
	
	@Autowired
	BasketballDao basketballDao;
	
	public BasketballServiceImpl() {
		
	}

	@Override
	public List<BasketballInfoVO> getPlayerInfo(BasketballInfoVO getPlayer) throws SQLException {
		
		return basketballDao.selectBasketballPlayerInfo(getPlayer);
		
	}
	
	@Override
	public List<BasketballMatchVO> getMatchInfo(BasketballMatchVO getMatch) throws SQLException {
		
		return basketballDao.selectBasketballMatchInfo(getMatch);
	}
	
	@Override
	public List<BasketballRecordVO> getBasketballRecordInfo(BasketballRecordVO getMatch) throws SQLException {
		return basketballDao.basketballRecordInfo(getMatch);
	}
	
	@Override
	public List<BasketballInfoVO> getBestPlayerInfo(BasketballInfoVO getMatch) throws SQLException {
		return basketballDao.bestPlayerInfo(getMatch);
	}

}
