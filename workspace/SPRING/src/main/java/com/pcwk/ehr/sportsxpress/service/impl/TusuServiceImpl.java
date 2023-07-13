package com.pcwk.ehr.sportsxpress.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.sportsxpress.VO.TusuInfoVO;
import com.pcwk.ehr.sportsxpress.dao.TusuDao;
import com.pcwk.ehr.sportsxpress.service.TusuService;

@Service
public class TusuServiceImpl implements TusuService {
//	private final Logger LOG = LogManager.getLogger(getClass());
	
	@Autowired
	TusuDao tusu_InfoDao;
	
	public TusuServiceImpl() {
	}
	
	@Override
	public List<TusuInfoVO> getTusuInfo(TusuInfoVO getPlayer) throws SQLException {
		return tusu_InfoDao.selectTusuInfo(getPlayer); // selectTusuInfo => Tusu_InfoDao
	}
}



