package com.pcwk.ehr.service;

import java.sql.SQLException;

import com.pcwk.ehr.VO.LikesVO;

public interface LikesService {
	
	int doCheckLike(LikesVO likesVO) throws SQLException;
	
    int doLikesCount(LikesVO likesVO) throws SQLException;

	int insertLike(LikesVO likesVO) throws SQLException;

	int deleteLike(LikesVO likesVO) throws SQLException;
}
