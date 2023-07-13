package com.pcwk.ehr.sportsxpress.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.sportsxpress.VO.TajaInfoVO;
import com.pcwk.ehr.sportsxpress.dao.TajaDao;
import com.pcwk.ehr.sportsxpress.service.TajaService;

@Service
public class TajaServiceImpl implements TajaService{
//	private final Logger LOG = LogManager.getLogger(getClass());
	
	@Autowired
	TajaDao taja_InfoDao;
	
	public TajaServiceImpl() {
		
	}
	
	@Override
	public List<TajaInfoVO> getTajaInfo(TajaInfoVO getPlayer) throws SQLException {
		
		return taja_InfoDao.selectTajaInfo(getPlayer);
	}
	
}
