package com.pcwk.ehr.daoImpl;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.pcwk.ehr.VO.RankVO;
import com.pcwk.ehr.dao.RankDao;

public class RankDaoImpl implements RankDao{
	final Logger log = LogManager.getLogger(getClass());

	final String NAMESPACE = "com.pcwk.ehr.main";
	final String DOT = ".";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	
	
	//1. 랭킹 정보 main 화면에 출력할 로직
	@Override
	public List<RankVO> doGetRanking(RankVO inVO) throws SQLException {
		
		List<RankVO> rankLisk = sqlSessionTemplate.selectList(NAMESPACE+DOT+"doGetRanking", inVO);
		
		return rankLisk;
	}
	

	

}
