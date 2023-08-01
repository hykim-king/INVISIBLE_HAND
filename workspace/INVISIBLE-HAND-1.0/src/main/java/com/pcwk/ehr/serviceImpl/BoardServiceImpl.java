package com.pcwk.ehr.serviceImpl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.VO.BoardVO;
import com.pcwk.ehr.dao.BoardDao;
import com.pcwk.ehr.service.BoardService;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDao dao; 
	
	@Override
	public int doSave(BoardVO inVO) throws SQLException {
		return dao.doSave(inVO);
	}

	@Override
	public int doDelete(BoardVO inVO) throws SQLException {
		return dao.doDelete(inVO);
	}

	@Override
	public int doUpdate(BoardVO inVO) throws SQLException {
		return 0;
	}

	@Override
	public BoardVO doSelectOne(BoardVO inVO) throws SQLException {
		return null;
	}

	@Override
	public List<BoardVO> doRetrieve(BoardVO inVO) throws SQLException {
		return null;
	}

}