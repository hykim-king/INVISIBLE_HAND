package com.pcwk.ehr.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.VO.CommentVO;

public interface CommentService {
	
	//댓글 조회
	public List<CommentVO> doRetrieve(int postNumber) throws SQLException;
	
	//댓글 등록
	public void add(CommentVO vo) throws SQLException;
	
	//댓글 수정
	public void update(CommentVO vo) throws SQLException;
	
	//댓글 삭제
	public void deleteOne(CommentVO vo) throws SQLException;
	
	//댓글 좋아요
	public int doUpdateReadCnt(CommentVO vo) throws SQLException;
}
