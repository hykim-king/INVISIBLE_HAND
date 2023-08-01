package com.pcwk.ehr.daoImpl;

import java.sql.SQLException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.VO.MemberVO;
import com.pcwk.ehr.dao.MemberDao;

@Repository
public class MemberDaoImpl implements MemberDao {
	
	final String NAMESPACE = "mapper.member.memberMapper";
	final String DOT = ".";

	@Autowired
	SqlSessionTemplate sqlSessionTemplate; // DB 연결객체
	
	final static Logger LOG = LogManager.getLogger(MemberDaoImpl.class);
	
	//private DataSource dataSource;

	// *****Default 생성자 필수*****
	public MemberDaoImpl() {
		
	}
	
    // 이메일 체크
	@Override
	public int emailCheck(MemberVO member) throws SQLException{
		int flag = 0;

		String statement = NAMESPACE + DOT + "emailCheck";
		LOG.debug("----------------------------------------");
		LOG.debug("1. statement = " + statement);
		LOG.debug("----------------------------------------");
		LOG.debug("2. param =\n" + member.toString());
		LOG.debug("----------------------------------------");
		LOG.debug("3. sql =\n" + sqlSessionTemplate);

		flag = sqlSessionTemplate.selectOne(statement, member);
		
		LOG.debug("3. flag = " + flag);

		return flag;
	}
	
	// id 체크
	@Override
	public int idCheck(MemberVO member) {
		String statement = NAMESPACE + DOT + "idCheck";
		LOG.debug("----------------------------------------");
		LOG.debug("1. statement = " + statement);
		LOG.debug("----------------------------------------");
		LOG.debug("2. param =\n" + member.toString());
		
		int result = sqlSessionTemplate.selectOne(statement, member);
		LOG.debug("3. result =" + result);
		return result;
	}
	
	
	//닉네임체크
	@Override
	public int nickNameCheck(MemberVO member) {
		String statement = NAMESPACE + DOT + "nickNameCheck";
		LOG.debug("----------------------------------------");
		LOG.debug("1. statement = " + statement);
		LOG.debug("----------------------------------------");
		LOG.debug("2. param =\n" + member.toString());
		
		int result = sqlSessionTemplate.selectOne(statement, member);
		LOG.debug("3. result =" + result);
		return result;
	}
	
	// 비번 체크
	@Override
	public int passCheck(MemberVO member) throws SQLException {
		int cnt = 0;
		
		String statement = NAMESPACE + DOT + "passCheck";
		LOG.debug("----------------------------------------");
		LOG.debug("1. statement = " + statement);
		LOG.debug("----------------------------------------");
		LOG.debug("2. param =\n" + member.toString());

		cnt = sqlSessionTemplate.selectOne(statement, member);
		LOG.debug("3. cnt = " + cnt);

		return cnt;
	}
	
	
	// 건수 조회
	@Override
	@SuppressWarnings("deprecation") // queryForObject에 대한 메시지 제거
	public int getCount(MemberVO member) throws SQLException {
		int cnt = 0;

		String statement = this.NAMESPACE + DOT + "getCount";
		LOG.debug("------------------------------");
		LOG.debug("1. statement = " + statement);
		LOG.debug("------------------------------");
		LOG.debug("2. param =\n" + member.toString());  // member = param
		LOG.debug("------------------------------");
		
		cnt = this.sqlSessionTemplate.selectOne(statement, member);
		LOG.debug("3. cnt = " + cnt);

		return cnt;
	} // getCount()
	

	// 회원정보 조회
	@Override
	public MemberVO get(MemberVO member) throws SQLException {
		MemberVO outVO = null;
		
		String statement = this.NAMESPACE + DOT + "get";
		LOG.debug("----------------------------");
		LOG.debug("1. statement- " + statement);
		LOG.debug("----------------------------");
		LOG.debug("2. param = \n" + member.toString());
		
		outVO = this.sqlSessionTemplate.selectOne(statement, member);
		LOG.debug("3.outVO = " + outVO);
	
		return outVO;
	}  // get()


	// 회원 정보 수정
	@Override
	public int update(MemberVO member) throws SQLException {
		int flag = 0;  // 수정 건수

		String statement = this.NAMESPACE + DOT + "update";
		LOG.debug("------------------------------");
		LOG.debug("1. statement = " + statement);
		LOG.debug("------------------------------");
		LOG.debug("2. param =\n" + member.toString());
		LOG.debug("------------------------------");

		flag = this.sqlSessionTemplate.update(statement, member);

		return flag;
		
	} // update()

	
	// 회원 탈퇴
	@Override
	public int deleteOne(final MemberVO member) throws SQLException {
		int flag = 0;

		String statement = this.NAMESPACE + DOT + "deleteOne";
		LOG.debug("------------------------------");
		LOG.debug("1. statement = " + statement);
		LOG.debug("------------------------------");
		LOG.debug("2. param = \n" + member.toString());
		LOG.debug("------------------------------");
		
		flag = this.sqlSessionTemplate.delete(statement, member);
		LOG.debug("3. flag = " + flag);
		
		return flag;
	} // deleteOne()

	// 회원 가입
	@Override
	public int add(final MemberVO member) throws SQLException {
		int flag = 0;  // 등록 건수
		
		String statement = this.NAMESPACE + DOT + "add";
		
		LOG.debug("------------------------------");
		LOG.debug("1. statement = " + statement);
		LOG.debug("------------------------------");
		LOG.debug("2. param =\n" + member.toString());
		LOG.debug("------------------------------");
		
		flag = this.sqlSessionTemplate.insert(statement, member);
		LOG.debug("3. flag = " + flag);

		return flag;
	} // add()





} // class end
