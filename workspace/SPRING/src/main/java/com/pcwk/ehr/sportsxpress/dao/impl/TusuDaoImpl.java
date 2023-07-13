package com.pcwk.ehr.sportsxpress.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.sportsxpress.VO.TusuInfoVO;
import com.pcwk.ehr.sportsxpress.dao.TusuDao;

@Repository
public class TusuDaoImpl implements TusuDao {
	private final Logger LOG = LogManager.getLogger(getClass());

	final String NAMESPACE = "com.pcwk.ehr.sportsxpress";
	final String DOT = ".";

	@Autowired
	SqlSessionTemplate sqlSessionTemplate; // DB 연결 객체

	public TusuDaoImpl() {

	}

	@Override
	public List<TusuInfoVO> selectTusuInfo(TusuInfoVO getPlayer) throws SQLException {
		List<TusuInfoVO> outList = new ArrayList<>();

		String statement = this.NAMESPACE + DOT + "selectTusuInfo";
		LOG.debug("-------------------------------------");
		LOG.debug("1. statement-" + statement);
		LOG.debug("-------------------------------------");
		LOG.debug("2. param=" + getPlayer);
		LOG.debug("-------------------------------------");

		outList = this.sqlSessionTemplate.selectList(statement, getPlayer);

		for (TusuInfoVO vo : outList) {
			LOG.debug("3. vo=" + vo);
		}
		LOG.debug("-------------------------------------");

		return outList;
	}

}