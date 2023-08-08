package com.pcwk.ehr.serviceImpl;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.pcwk.ehr.VO.CommentVO;
import com.pcwk.ehr.dao.CommentDAO;
import com.pcwk.ehr.service.CommentService;

@Service
public class CommentServiceImpl implements CommentService{
		
	@Inject
	private CommentDAO dao;

	@Override
	public List<CommentVO> doRetrieve(int postNumber) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void add(CommentVO vo) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(CommentVO vo) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteOne(CommentVO vo) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int doUpdateReadCnt(CommentVO vo) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}



}
