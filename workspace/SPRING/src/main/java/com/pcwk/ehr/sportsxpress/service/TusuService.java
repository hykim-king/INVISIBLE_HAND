package com.pcwk.ehr.sportsxpress.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.sportsxpress.VO.TusuInfoVO;

public interface TusuService {
	
	public List<TusuInfoVO> getTusuInfo(TusuInfoVO getPlayer) throws SQLException;
	
}
