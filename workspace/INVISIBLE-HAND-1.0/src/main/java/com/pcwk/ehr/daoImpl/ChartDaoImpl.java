package com.pcwk.ehr.daoImpl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.VO.ChartVO;
import com.pcwk.ehr.dao.ChartDao;


@Repository
public class ChartDaoImpl implements ChartDao {
	
	final String NAMESPACE = "com.pcwk.ehr.main";
	final String DOT       = ".";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	
	//차트 데이터 조회
	public List<ChartVO> chartGraph(ChartVO inVO) {
		
	
		return sqlSessionTemplate.selectList(NAMESPACE+DOT+"chartGraph", inVO);
	}

}
