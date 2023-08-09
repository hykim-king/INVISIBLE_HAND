package com.pcwk.ehr.daoImpl;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.VO.RankVO;
import com.pcwk.ehr.dao.RankDao;


@Repository
public class RankDaoImpl implements RankDao{
	final Logger log = LogManager.getLogger(getClass());

	final String NAMESPACE = "com.pcwk.ehr.main";
	final String DOT = ".";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	
	
	//1. 랭킹 정보 main 화면에 출력할 로직
	@Override

	public Map<String, Integer> getRank(RankVO inVO) throws SQLException {
		List<RankVO> rankList = sqlSessionTemplate.selectList(NAMESPACE + DOT + "getRank", inVO);

		Map<String, Integer> resultMap = new HashMap<>();
		for (RankVO rankVO : rankList) {
		    resultMap.put(rankVO.getName(), rankVO.getScore());
		}

		return (Map<String, Integer>) sqlSessionTemplate.selectList(NAMESPACE + DOT + "getRank", inVO);

	public List<RankVO> doGetRanking(RankVO inVO) throws SQLException {
		
		
		return sqlSessionTemplate.selectList(NAMESPACE+DOT+"doGetRanking", inVO);


	}



	@Override
	public int doUpdatePrevious(RankVO inVO) throws SQLException {
		
		return sqlSessionTemplate.update(NAMESPACE+DOT+"doUpdatePrevious", inVO);
	}



	@Override
	public int doUpdateCurrent(RankVO inVO) throws SQLException {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update(NAMESPACE+DOT+"doUpdateCurrent", inVO);
	}
	

	

}
