package com.pcwk.ehr.dao;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.VO.BoardVO;

public interface MainDao {

	int doUpdateViews(BoardVO inVO) throws SQLException;
	
	BoardVO doSelectOne(BoardVO inVO) throws SQLException;
	
	List<BoardVO> doRetrieve(BoardVO inVO) throws SQLException;


}
