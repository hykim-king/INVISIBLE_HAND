package com.pcwk.ehr.dao;

import java.sql.SQLException;

import com.pcwk.ehr.VO.LikesVO;

public interface LikesDAO {
	
	int doCheckLike(LikesVO likesVO) throws SQLException;
	
    int insertLike(LikesVO likesVO) throws SQLException;
    
    int deleteLike(LikesVO likesVO) throws SQLException;
    
    int doLikesCount(LikesVO likesVO) throws SQLException;
}
