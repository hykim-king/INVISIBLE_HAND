package com.pcwk.ehr.daoImpl;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.VO.MemberVO;
import com.pcwk.ehr.dao.AdminDao;

@Repository
public class AdminDaoImpl implements AdminDao {
	final Logger LOG = LogManager.getLogger(getClass());

	final String NAMESPACEMEMBER = "mapper.member.memberMapper"; // src/main/resources/member 폴더 까지.
	final String DOT = ".";

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<MemberVO> getAllMemberDao() {
		String statement = NAMESPACEMEMBER + DOT + "findAll"; // mapper에 있는 id가 findall인 xml을 쓰고싶어요!
		LOG.debug("1. statement: " + statement);
		List<MemberVO> memberlist = sqlSessionTemplate.selectList(statement); // statement, param << 여기서는 param이 없어서 안줌.
		for (MemberVO memberone : memberlist) {
			LOG.debug("2. memberone: " + memberone);
		}

		return memberlist;
	}

	@Override
	public int getCount(MemberVO member) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MemberVO get(MemberVO member) throws ClassNotFoundException, SQLException {
		MemberVO outVO = null;

		String statement = this.NAMESPACEMEMBER + DOT + "get";
		LOG.debug("----------------------------");
		LOG.debug("1. statement-" + statement);
		LOG.debug("----------------------------");
		LOG.debug("2. param=\n" + member.toString());

		outVO = this.sqlSessionTemplate.selectOne(statement, member);
		LOG.debug("3.outVO:" + outVO);

		return outVO;
	}

	@Override
	public int update(MemberVO member) throws SQLException {
		int flag = 0;
		String statement = this.NAMESPACEMEMBER + DOT + "update";
		LOG.debug("1. statement-" + statement);
		LOG.debug("2. param=" + member);

		flag = this.sqlSessionTemplate.update(statement, member);

		LOG.debug("3. flag=" + flag);

		return flag;
	}

	@Override
	public int deleteOne(MemberVO member) throws SQLException {
		int flag = 0;
		// ---------------------------------------
		String statement = this.NAMESPACEMEMBER + DOT + "deleteOne";
		LOG.debug("----------------------------");
		LOG.debug("1. statement-" + statement);
		LOG.debug("----------------------------");
		LOG.debug("2. param=\n" + member.toString());
		flag = this.sqlSessionTemplate.delete(statement, member);
		LOG.debug("3. flag=" + flag);

		// ----------------------------------------
		return flag;
	}

} // class end
