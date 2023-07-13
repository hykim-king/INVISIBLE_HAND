package com.pcwk.ehr.sportsxpress.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.sportsxpress.VO.BaseballMatchVO;
import com.pcwk.ehr.sportsxpress.VO.BaseballRecordVO;
import com.pcwk.ehr.sportsxpress.dao.BaseballDao;
import com.pcwk.ehr.sportsxpress.service.BaseballService;

@Service
public class BaseballServiceImpl implements BaseballService {
	
	@Autowired
	BaseballDao baseballDao;

	@Override
	public List<BaseballMatchVO> getMatchInfo(BaseballMatchVO getMatch) throws SQLException {
		return baseballDao.selectBaseballMatchInfo(getMatch);
	}

	@Override
	public List<BaseballMatchVO> getSelectBaseballRecord(BaseballMatchVO getMatch) throws SQLException {
		return baseballDao.selectBaseballRecord(getMatch);
	}
	
	@Override
	public List<BaseballRecordVO> getBaseballRecordInfo(BaseballRecordVO getRecord) throws SQLException {	
		return baseballDao.baseballRecordInfo(getRecord);
	}

	
}
