package com.pcwk.ehr.daoImpl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.VO.ChartVO;
import com.pcwk.ehr.dao.ChartDao;


@Repository
public class ChartDaoImpl implements ChartDao {
	
	final String NAMESPACE = "com.pcwk.ehr.chart";
	final String DOT       = ".";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
//chart01
	//(변수 1개일때 maincategory)
	public List<ChartVO> chartGraphAvg(ChartVO inVO){
		return sqlSessionTemplate.selectList(NAMESPACE+DOT+"chartGraphAvg", inVO);
	}
	
	
	//차트 데이터 조회 (변수 2개일때 maincategory, subcategory)
	public List<ChartVO> chartGraph(ChartVO inVO) {
		
	
		return sqlSessionTemplate.selectList(NAMESPACE+DOT+"chartGraph", inVO);
	}
//chart01 end
	

	
//chart02
	public List<ChartVO> chart02GraphAvg(ChartVO inVO){
		return sqlSessionTemplate.selectList(NAMESPACE+DOT+"chart02GraphAvg", inVO);
	}
	
	
	public List<ChartVO> chart02Graph(ChartVO inVO) {			
		return sqlSessionTemplate.selectList(NAMESPACE+DOT+"chart02Graph", inVO);
	}
//chart02 end


	
//chart03
	@Override
	public List<ChartVO> chart03GraphAvg(ChartVO inVO) {
		return sqlSessionTemplate.selectList(NAMESPACE+DOT+"chart03GraphAvg", inVO);
	}

	@Override
	public List<ChartVO> chart03Graph(ChartVO inVO) {
		return sqlSessionTemplate.selectList(NAMESPACE+DOT+"chart03Graph", inVO);
	}
//chart03 end

	
	
//chart04
	
	@Override
	public List<ChartVO> chart04GraphAvg(ChartVO inVO) {
		return sqlSessionTemplate.selectList(NAMESPACE+DOT+"chart04GraphAvg", inVO);
	}


	@Override
	public List<ChartVO> chart04Graph(ChartVO inVO) {
		return sqlSessionTemplate.selectList(NAMESPACE+DOT+"chart04Graph", inVO);
	}
//chart04 end
}
