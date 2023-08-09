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
	
	//랭킹 조회
	@Override
	public Map<String, Integer> getRank(RankVO inVO) throws SQLException {
		List<RankVO> rankList = sqlSessionTemplate.selectList(NAMESPACE + DOT + "getRank", inVO);

		Map<String, Integer> resultMap = new HashMap<>();
		for (RankVO rankVO : rankList) {
		    resultMap.put(rankVO.getName(), rankVO.getScore());
		}

		return (Map<String, Integer>) sqlSessionTemplate.selectList(NAMESPACE + DOT + "getRank", inVO);
	}

}
