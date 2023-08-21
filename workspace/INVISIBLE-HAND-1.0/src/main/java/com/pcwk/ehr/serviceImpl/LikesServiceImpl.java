package com.pcwk.ehr.serviceImpl;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.VO.LikesVO;
import com.pcwk.ehr.cmn.PcwkLoger;
import com.pcwk.ehr.cmn.StringUtil;
import com.pcwk.ehr.dao.LikesDAO;
import com.pcwk.ehr.service.LikesService;

@Service
public class LikesServiceImpl implements LikesService, PcwkLoger {

	@Autowired
	LikesDAO dao;
	
	@Override
	public int doCheckLike(LikesVO likesVO) throws SQLException {
		return dao.doCheckLike(likesVO);
	}

	@Override
	public int doLikesCount(LikesVO likesVO) throws SQLException {
		return dao.doLikesCount(likesVO);
	}

	@Override
	public int insertLike(LikesVO likesVO) throws SQLException {
		return dao.insertLike(likesVO);
	}

	@Override
	public int deleteLike(LikesVO likesVO) throws SQLException {
		return dao.deleteLike(likesVO);
	}

}
