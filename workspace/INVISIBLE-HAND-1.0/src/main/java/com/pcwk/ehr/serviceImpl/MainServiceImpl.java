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
	public int doUpdateViews(BoardVO inVO) throws SQLException {
			
		return mainDao.doUpdateViews(inVO);
	}
	
	
	//단건 조회
	@Override
	public BoardVO doSelectOne(BoardVO inVO) throws SQLException {
		
		//조회시 조회수 증가
		BoardVO vo = mainDao.doSelectOne(inVO);
		
		if(null != vo) {
			mainDao.doUpdateViews(inVO);
		}
		
		return vo;
	}
	
	
	//리스트 조회 //조회수 상위 5개만
	@Override
	public List<BoardVO> doRetrieve(BoardVO inVO) throws SQLException {
		
		return mainDao.doRetrieve(inVO);
	}
	

}
