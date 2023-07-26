package com.pcwk.ehr.daoImpl;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.mapping.BoundSql;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.VO.BoardVO;
import com.pcwk.ehr.dao.BoardDao;

/**
 * 1.doDelete 2.doSave 3.doSelectOne
 * 
 * 4.doUpdate
 * 
 * 5.doRetrieve
 * 
 * @author user
 *
 */
@Repository
public class BoardDaoImpl implements BoardDao {
	final Logger lg = LogManager.getLogger(getClass());

	final String NAMESPACE = "com.pcwk.ehr.board";
	final String DOT = ".";

	@Autowired
	SqlSessionTemplate sqlSessionTemplate; // DB 연결객체

	@Override
	public int doSave(BoardVO inVO) throws SQLException {
		lg.debug("┌──────────────────────────────┐");
		lg.debug("│ doSave                       │");
		lg.debug("│ inVO                         │" + inVO);
		lg.debug("│ statement                    │" + NAMESPACE + DOT + "doSave");
		lg.debug("└──────────────────────────────┘");
		BoundSql boundSql = sqlSessionTemplate.getConfiguration().getMappedStatement(NAMESPACE + DOT + "doSave")
				.getBoundSql(inVO);
		String query = boundSql.getSql();
		lg.debug("│query                          │" + query);
		return sqlSessionTemplate.insert(NAMESPACE + DOT + "doSave", inVO);
	}

	@Override
	public int doDelete(BoardVO inVO) throws SQLException {
		lg.debug("┌──────────────────────────────┐");
		lg.debug("│ doDelete                     │");
		lg.debug("│ inVO                         │" + inVO);
		lg.debug("│ statement                    │" + NAMESPACE + DOT + "doDelete");
		lg.debug("└──────────────────────────────┘");
		return sqlSessionTemplate.delete(NAMESPACE + DOT + "doDelete", inVO);
	}

	@Override
	public int doUpdate(BoardVO inVO) throws SQLException {
		return 0;
	}

	@Override
	public BoardVO doSelectOne(BoardVO inVO) throws SQLException {
		lg.debug("┌──────────────────────────────┐");
		lg.debug("│ doSelectOne                  │");
		lg.debug("│ inVO                         │" + inVO);
		lg.debug("│ statement                    │" + NAMESPACE + DOT + "doSelectOne");
		lg.debug("└──────────────────────────────┘");
		return sqlSessionTemplate.selectOne(NAMESPACE + DOT + "doSelectOne", inVO);
	}

	@Override
	public List<BoardVO> doRetrieve(BoardVO inVO) throws SQLException {
		return null;
	}

}