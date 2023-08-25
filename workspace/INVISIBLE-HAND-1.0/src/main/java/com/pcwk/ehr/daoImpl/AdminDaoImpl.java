package com.pcwk.ehr.daoImpl;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.VO.AdminVO;
import com.pcwk.ehr.VO.MemberVO;
import com.pcwk.ehr.dao.AdminDao;

@Repository
public class AdminDaoImpl implements AdminDao {
	final Logger LOG = LogManager.getLogger(getClass());

	final String NAMESPACEMEMBER = "mapper.member.memberMapper"; // src/main/resources/member 폴더 까지.
	final String NAMESPACESUBSCRIPTION = "mapper.subscription.gradeInfo"; // src/main/resources/subscription
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
	public int adminUpdate(MemberVO member) throws SQLException {
		int flag = 0;
		String statement = this.NAMESPACEMEMBER + DOT + "adminUpdate";
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
	@Override
	public List<AdminVO> getAllsubscriptionDao() {
		String statement1 = NAMESPACESUBSCRIPTION + DOT + "subscriptionAll";
		LOG.debug("1. statement1: " + statement1);
		List<AdminVO> subscriptionlist = sqlSessionTemplate.selectList(statement1);
		for (AdminVO subscriptionone : subscriptionlist) {
			LOG.debug("2. subscriptionone: " + subscriptionone);
		}

		return subscriptionlist;
	}

	@Override
	public int update(AdminVO admin) throws SQLException {
		int flag = 0;
		String statement = this.NAMESPACESUBSCRIPTION + DOT + "adminUpdate";
		LOG.debug("1. statement-" + statement);
		LOG.debug("2. param=" + admin);

		flag = this.sqlSessionTemplate.update(statement, admin);

		LOG.debug("3. flag=" + flag);

		return flag;
	}

	@Override
	public AdminVO get(AdminVO admin) throws ClassNotFoundException, SQLException {
		
			AdminVO outVO = null;

			String statement = this.NAMESPACESUBSCRIPTION + DOT + "get";
			LOG.debug("----------------------------");
			LOG.debug("1. statement-" + statement);
			LOG.debug("----------------------------");
			LOG.debug("2. param=\n" + admin.toString());

			outVO = this.sqlSessionTemplate.selectOne(statement, admin);
			LOG.debug("3.outVO:" + outVO);

			return outVO;
	}



} // class end
