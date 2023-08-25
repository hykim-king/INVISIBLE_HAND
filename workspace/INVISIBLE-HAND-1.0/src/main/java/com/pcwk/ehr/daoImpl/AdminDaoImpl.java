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
import com.pcwk.ehr.VO.PostVO;
import com.pcwk.ehr.dao.AdminDao;

@Repository
public class AdminDaoImpl implements AdminDao {
	final Logger LOG = LogManager.getLogger(getClass());

//	final String NAMESPACEMEMBER = "mapper.member.memberMapper"; // src/main/resources/member 폴더 까지.
//	final String NAMESPACESUBSCRIPTION = "mapper.subscription.gradeInfo"; // src/main/resources/subscription
	final String NAMESPACE = "com.pcwk.ehr.admin";
	final String DOT = ".";

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	// 회원 정보 수정
	@Override
	public int adminUpdate(MemberVO member) throws SQLException {
		int flag = 0;
		String statement = this.NAMESPACE + DOT + "adminUpdate";
		LOG.debug("1. statement-" + statement);
		LOG.debug("2. param=" + member);
		
		flag = this.sqlSessionTemplate.update(statement, member);
		
		LOG.debug("3. flag=" + flag);
		
		return flag;
	}
	
	//회원 전체 조회(페이징 및 검색 구현)
	public List<MemberVO> doRetrieve(MemberVO inVO) throws SQLException {
		
		
		return sqlSessionTemplate.selectList(NAMESPACE+DOT+"doRetrieve", inVO);
	}
	
	//? 회원을 가져오는 건가?
//	@Override
//	public List<MemberVO> getAllMemberDao() {
//		String statement = NAMESPACEM + DOT + "findAll"; // mapper에 있는 id가 findall인 xml을 쓰고싶어요!
//		LOG.debug("1. statement: " + statement);
//		List<MemberVO> memberlist = sqlSessionTemplate.selectList(statement); // statement, param << 여기서는 param이 없어서 안줌.
//		for (MemberVO memberone : memberlist) {
//			LOG.debug("2. memberone: " + memberone);
//		}
//
//		return memberlist;
//	}
//	
//	
//	//?
//	@Override
//	public int getCount(MemberVO member) throws SQLException {
//		return 0;
//	}
	
	
	//선택시 회원 정보 가져오기 사용한듯
	@Override
	public MemberVO get(MemberVO member) throws ClassNotFoundException, SQLException {
		MemberVO outVO = null;

		String statement = this.NAMESPACE + DOT + "get";
		LOG.debug("----------------------------");
		LOG.debug("1. statement-" + statement);
		LOG.debug("----------------------------");
		LOG.debug("2. param=\n" + member.toString());

		outVO = this.sqlSessionTemplate.selectOne(statement, member);
		LOG.debug("3.outVO:" + outVO);

		return outVO;
	}
	
	
	//삭제하기
	@Override
	public int deleteOne(MemberVO member) throws SQLException {
		int flag = 0;
		// ---------------------------------------
		String statement = this.NAMESPACE + DOT + "deleteOne";
		LOG.debug("----------------------------");
		LOG.debug("1. statement-" + statement);
		LOG.debug("----------------------------");
		LOG.debug("2. param=\n" + member.toString());
		flag = this.sqlSessionTemplate.delete(statement, member);
		LOG.debug("3. flag=" + flag);

		// ----------------------------------------
		return flag;
	}
	
	//구독 정보 가져오기
	@Override
	public List<AdminVO> getAllsubscription() {
		String statement1 = NAMESPACE + DOT + "getAllsubscription";
		LOG.debug("1. statement1: " + statement1);
		List<AdminVO> subscriptionlist = sqlSessionTemplate.selectList(statement1);
		for (AdminVO subscriptionone : subscriptionlist) {
			LOG.debug("2. subscriptionone: " + subscriptionone);
		}

		return subscriptionlist;
	}
	
	
	//구독가격 수정
	@Override
	public int updateSubscription(AdminVO admin) throws SQLException {
		int flag = 0;
		String statement = this.NAMESPACE + DOT + "updateSubscription";
		LOG.debug("1. statement-" + statement);
		LOG.debug("2. param=" + admin);

		flag = this.sqlSessionTemplate.update(statement, admin);

		LOG.debug("3. flag=" + flag);

		return flag;
	}
	
	
	//구독자 확인
	@Override
	public AdminVO getSubscription(AdminVO admin) throws ClassNotFoundException, SQLException {
		
			AdminVO outVO = null;

			String statement = this.NAMESPACE + DOT + "getSubscription";
			LOG.debug("----------------------------");
			LOG.debug("1. statement-" + statement);
			LOG.debug("----------------------------");
			LOG.debug("2. param=\n" + admin.toString());

			outVO = this.sqlSessionTemplate.selectOne(statement, admin);
			LOG.debug("3.outVO:" + outVO);

			return outVO;
	}



} // class end
