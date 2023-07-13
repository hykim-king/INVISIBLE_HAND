package com.pcwk.ehr.sportsxpress.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.sportsxpress.VO.TajaInfoVO;
import com.pcwk.ehr.sportsxpress.dao.TajaDao;

@Repository
public class TajaDaoImpl implements TajaDao {

	private final Logger LOG = LogManager.getLogger(getClass());

	final String NAMESPACE = "com.pcwk.ehr.sportsxpress";
	final String DOT = ".";

	@Autowired
	SqlSessionTemplate sqlSessionTemplate; // DB 연결 객체

	public TajaDaoImpl() {
		
	}
	
	
	@Override
	public List<TajaInfoVO> selectTajaInfo(TajaInfoVO getPlayer) throws SQLException {
		
		List<TajaInfoVO> outList = new ArrayList<>();
		
		String statement = this.NAMESPACE+DOT+"selectTajaInfo";	// selectTajaInfo : 메서드 이름과 동일 해야한다.	
		LOG.debug("-------------------------------------");
		LOG.debug("1. statement-" + statement);
		LOG.debug("-------------------------------------");
		LOG.debug("2. param=" + getPlayer);
		LOG.debug("-------------------------------------");
		
		outList = this.sqlSessionTemplate.selectList(statement, getPlayer);
		
		for(TajaInfoVO vo : outList) {
			LOG.debug("3. vo=" + vo);
		}
		LOG.debug("-------------------------------------");

		return outList;
	}

}
