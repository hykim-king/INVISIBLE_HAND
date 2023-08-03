package com.pcwk.ehr.dao;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.VO.PostVO;

public interface MainDao {

	int doUpdateViews(PostVO inVO) throws SQLException;
	
	PostVO doSelectOne(PostVO inVO) throws SQLException;
	
	List<PostVO> doRetrieve(String categorynumber) throws SQLException;


}
