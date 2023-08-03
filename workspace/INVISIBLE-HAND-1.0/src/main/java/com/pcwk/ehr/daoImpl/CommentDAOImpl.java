package com.pcwk.ehr.daoImpl;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.VO.CommentVO;
import com.pcwk.ehr.dao.CommentDAO;

@Repository
public class CommentDAOImpl implements CommentDAO {
	
	@Inject
	private SqlSession sql;
	
	private static String namespace = "com.pcwk.ehr.comment";

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
