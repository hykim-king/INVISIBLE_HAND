package com.pcwk.ehr.daoImpl;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.VO.ChartVO;
import com.pcwk.ehr.VO.RankVO;
import com.pcwk.ehr.VO.SolutionVO;
import com.pcwk.ehr.dao.SolutionDao;


@Repository
public class SolutionDaoImpl implements SolutionDao {

	final String NAMESPACE = "com.pcwk.ehr.solution";
	final String NAMESPACECHART = "com.pcwk.ehr.chart";
	final String DOT       = ".";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public List<ChartVO> SelectMaincategory(ChartVO inVO){
		return sqlSessionTemplate.selectList(NAMESPACE+DOT+"SelectMaincategory", inVO);
	}

	public List<ChartVO> SelectSubcategory(ChartVO inVO) {
		return sqlSessionTemplate.selectList(NAMESPACE+DOT+"SelectSubcategory", inVO);
	}
	
	public List<SolutionVO> getSolutionContents(SolutionVO inVO) {
		return sqlSessionTemplate.selectList(NAMESPACE+DOT+"getSolutionContents", inVO);
	}
	
	public List<ChartVO> getScoreContents(ChartVO inVO) {
		return sqlSessionTemplate.selectList(NAMESPACECHART+DOT+"getAiSolve", inVO);
	}
	
	
	
	



}
