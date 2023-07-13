package com.pcwk.ehr.sportsxpress.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.sportsxpress.VO.TajaInfoVO;

public interface TajaService {

	public List<TajaInfoVO> getTajaInfo(TajaInfoVO getPlayer) throws SQLException;
}
