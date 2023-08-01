package com.pcwk.ehr.daoImpl;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.VO.BoardVO;
import com.pcwk.ehr.dao.MainDao;

@Repository
public class MainDaoImpl implements MainDao {
	
	final Logger log = LogManager.getLogger(getClass());

	final String NAMESPACE = "com.pcwk.ehr.main";
	final String DOT = ".";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate; // DB 연결객체
	
	
	//조회수 증가
	@Override
	public int doUpdate(BoardVO inVO) throws SQLException {
		
		return sqlSessionTemplate.update(NAMESPACE+DOT+"doUpdate", inVO);
	}
	
	//단건 조회
	@Override
	public BoardVO doSelectOne(BoardVO inVO) throws SQLException {
		
		return sqlSessionTemplate.selectOne(NAMESPACE+DOT+"doSelectOne", inVO);
	}
	
	//리스트 조회
	@Override
	public List<BoardVO> doRetrieve(BoardVO inVO) throws SQLException {
		
		return sqlSessionTemplate.selectList(NAMESPACE + DOT + "doRetrieve", inVO);
	}
	
}

