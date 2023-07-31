package com.pcwk.ehr.serviceImpl;

import java.sql.SQLException;

import javax.annotation.Resource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.dao.MemberDao;
import com.pcwk.ehr.service.MemberService;
import com.pcwk.ehr.VO.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	final Logger LOG = LogManager.getLogger(getClass());
	
	@Resource(name = "dummyMailSender")
	//@Resource(name = "mailSenderImpl")
	private MailSender mailSender; // mail
	
	@Autowired
	MemberDao memberDao;
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	public MemberServiceImpl() {
		
	}

	@Override
	public int emailCheck(MemberVO member) throws SQLException {

		return memberDao.emailCheck(member);
	}

	//아이디 중복체크
	@Override
	public int idCheck(MemberVO member) throws Exception {
		int result = memberDao.idCheck(member);
		return result;
	}

	//닉네임 중복체크
	@Override
	public int nickNameCheck(MemberVO member) throws Exception {
		int result = memberDao.nickNameCheck(member);
		return result;
	}
	
	@Override
	public int passCheck(MemberVO member) throws SQLException {

		return memberDao.passCheck(member);
	}
    
    
	
	public void setMailSender(MailSender mailSender) {
		this.mailSender = mailSender;
	}
	
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	// 처음 가입 시 메일 보내기
	private void sendJoinEmail(MemberVO member) {
		LOG.debug("┌────────────────────────┐");
		LOG.debug("│      sendJoinEmail     │");
		LOG.debug("└────────────────────────┘");

		LOG.debug("mailSender: " + this.mailSender);

		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom("calmate77@naver.com");
		message.setTo(member.getEmail());
		message.setSubject("CalMate 회원 가입 안내");
		message.setText("CalMate에서 " + member.getMemberName() + "님을 환영합니다~~!!");

		this.mailSender.send(message);

	}
	
	// 회원 가입
	@Override
	public int add(MemberVO inVO) throws SQLException, ClassNotFoundException {

		sendJoinEmail(inVO);
		return this.memberDao.add(inVO);
		
	}

	@Override
	public int getCount(MemberVO member) throws SQLException {
		return memberDao.getCount(member);
	}

	@Override
	public MemberVO get(MemberVO member) throws ClassNotFoundException, SQLException {
		return memberDao.get(member);
	}

	@Override
	public int update(MemberVO member) throws SQLException {
		return memberDao.update(member);
	}

	@Override
	public int deleteOne(MemberVO member) throws SQLException {
		return memberDao.deleteOne(member);
	}
	
	@Override
	public int doLogin(MemberVO member) throws SQLException {
		// 1. 아이디 Check
		// 2. 비번 Check
		
		int checkStatus = 0; // 10(id 없음), 20(비번오류), 30(성공)
		
		int status = this.memberDao.idCheck(member);
		
		if(1==status) {
			status = memberDao.passCheck(member);

			if(1==status) {
				checkStatus = 30; // 로그인 성공
			}else {
				checkStatus = 20; // 비번 오류, id 있음
			}
			
		}else {
			checkStatus = 10; // id 없음
		}

		LOG.debug("==================");
		LOG.debug("=doLogin()=");
		LOG.debug("==================");
		return checkStatus;
	}


	
} // class end
