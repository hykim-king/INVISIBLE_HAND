package com.pcwk.ehr.serviceImpl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.VO.BoardVO;
import com.pcwk.ehr.dao.MainDao;
import com.pcwk.ehr.service.MainService;

@Service
public class MainServiceImpl implements MainService {
	
	@Autowired
	MainDao mainDao;
	
	//조회수 증가
	@Override
	public int doUpdate(BoardVO inVO) throws SQLException {
		
		return mainDao.doUpdate(inVO);
	}
	
	
	//단건 조회
	@Override
	public BoardVO doSelectOne(BoardVO inVO) throws SQLException {
		
		return mainDao.doSelectOne(inVO);
	}
	
	
	//리스트 조회
	@Override
	public List<BoardVO> doRetrieve(BoardVO inVO) throws SQLException {
		
		return mainDao.doRetrieve(inVO);
	}
	

}
