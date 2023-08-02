package com.pcwk.ehr.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.VO.BoardVO;

public interface MainService {
	
	int doUpdateViews(BoardVO inVO) throws SQLException;
	
	BoardVO doSelectOne(BoardVO inVO) throws SQLException;
	
	List<BoardVO> doRetrieve(BoardVO inVO) throws SQLException;


}
