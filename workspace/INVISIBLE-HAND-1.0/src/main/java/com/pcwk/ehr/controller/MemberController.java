package com.pcwk.ehr.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.util.CookieGenerator;

import com.pcwk.ehr.VO.MemberVO;
import com.pcwk.ehr.VO.MessageVO;
import com.pcwk.ehr.service.MailSendService;
import com.pcwk.ehr.service.MemberService;

@Controller("membercontroller")
@RequestMapping(value = "member")	//WEB_INF아래 폴더이름을 적는곳.
public class MemberController {
	
	final Logger LOG = LogManager.getLogger(getClass());

	@Autowired
	MailSendService mailService;
	
	private final MemberService memberService;

	public MemberController(MemberService memberService) {
		this.memberService = memberService;
	}
	
	//----------------------------회원가입(join)시작------------------------------
	
	//회원 가입 페이지 열기
	@RequestMapping(value = "/memberJoin.do")
	public String memberJoin() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   memberJoin()        │");
		LOG.debug("└───────────────────────┘");
		
		return "member/memberJoin";
	}
	
	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value = "/idCheck.do")
	public String idCheck(MemberVO member) throws Exception {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   idCheck ()          │"+member);
		LOG.debug("└───────────────────────┘");
		int result = memberService.idCheck(member);
		
		return Integer.toString(result);
	}
	
	// 닉네임 중복 체크
	@ResponseBody
	@RequestMapping(value = "/nickNameCheck.do")
	public String nickNameCheck(MemberVO member) throws Exception {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   nickNameCheck ()    │"+member);
		LOG.debug("└───────────────────────┘");
		int flag = memberService.nickNameCheck(member);
		
		return Integer.toString(flag);
	}
	// 이메일 중복 체크
	@ResponseBody
	@RequestMapping(value = "/emailCheck.do")
	public String emailCheck(MemberVO member) throws Exception {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   emailCheck ()       │"+member);
		LOG.debug("└───────────────────────┘");
		int flag = memberService.emailCheck(member);
		
		return Integer.toString(flag);
	}
	
	// 이메일 인증 번호 전송
	@GetMapping(value = "/numCheck.do")
	@ResponseBody
	public String numCheck(String email) {
		System.out.println("이메일 인증 요청이 들어옴!");
		System.out.println("이메일 인증 이메일 : " + email);
		return mailService.joinEmail(email);
	}
	
	
	//회원가입페이지에서 로그인페이지로 이동
	@PostMapping("/join.do")
	public String add(@ModelAttribute MemberVO member) throws ClassNotFoundException, SQLException {
		
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   add ()              │"+member);
		LOG.debug("└───────────────────────┘");
		int flag = memberService.add(member);
		return Integer.toString(flag);
		
	}
	
	 

	//----------------------------회원가입(join)끝------------------------------
	
	//----------------------------로그인/로그아웃 시작------------------------------
	//로그인페이지열기
	@RequestMapping(value = "/memberLogin.do")
	public String memberLogin() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   memberLogin()       │");
		LOG.debug("└───────────────────────┘");
		
		return "member/memberLogin";
	}
	
	// 로그인  버튼 눌렀을 떄
	@RequestMapping(value = "/dologin.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	@ResponseStatus(HttpStatus.OK)
	public Object doLogin(MemberVO member, HttpSession httpSession, HttpServletResponse response) throws SQLException, ClassNotFoundException {
	    LOG.debug("┌────────────────────────────┐");
	    LOG.debug("│  member: " + member);
	    MessageVO message = new MessageVO();

	    // 1. id 미입력
	    if (null == member.getMemberId() || "".equals(member.getMemberId())) {
	        message.setMsgId("1");
	        message.setMsgContents("아이디를 입력하세요-controller-");
	        return message;
	    }
	    // 2. pw 미입력
	    if (null == member.getPassword() || "".equals(member.getPassword())) {
	        message.setMsgId("2");
	        message.setMsgContents("비밀번호를 입력하세요-controller-");
	        return message;
	    }

	    // 10 : id 오류
	    // 20 : 비번 오류
	    // 30 : 성공
	    int status = memberService.login(member);
	    
	    LOG.debug("status---------" + status);
	    
	    if (10 == status) {
	        message.setMsgId("10");
	        message.setMsgContents("아이디를 확인하세요-controller-");
	        return message;
	    } else if (20 == status) {
	        message.setMsgId("20");
	        message.setMsgContents("비밀번호를 확인하세요-controller-");
	        return message;
	    } else if (30 == status) {
	        message.setMsgId("30");
	        message.setMsgContents(member.getMemberId() + "님 환영합니다");
	        
	        MemberVO memberInfo = memberService.get(member);
	        LOG.debug("memberInfo---------" + memberInfo);
	        if (memberInfo != null) {
				//session설정
				httpSession.setAttribute("member", memberInfo);
				
				LOG.debug("999member" + member);
				//쿠키 생성: memberId
				CookieGenerator cg=new CookieGenerator(); // Spring Cookie helper 클래스 
				cg.setCookieName("loginId");
				cg.setCookieMaxAge(-1);  
				cg.addCookie(response, memberInfo.getMemberId());				
			}
	        
	        // 리다이렉트 처리
	        response.setHeader("Location", "/ehr/main/main.do");
	        return message;
	    }

	    LOG.debug("└────────────────────────────┘");

	    return message;
	}
	
	@RequestMapping(value="/logout.do")
	public String logout(HttpSession session) {
		LOG.debug("=====================");
		LOG.debug("=logout()=");
		LOG.debug("=====================");		
		
		
		if(null != session.getAttribute("member")) {
			session.removeAttribute("member");
			session.invalidate();
			LOG.debug("=session.invalidate()=");
		}
		
		return "main/main";
		
	}
	
	//----------------------------로그인/로그아웃 끝------------------------------
	
	//----------------------------페이지들 열기------------------------------
	

	


	//비밀번호 변경 페이지
	@RequestMapping(value = "/memberPWChange.do")
	public String memberPWChange() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   memberPWChange()    │");
		LOG.debug("└───────────────────────┘");
		
		return "member/memberPWChange";
	}
	//회원 탈퇴 페이지
	@RequestMapping(value = "/memberDelete.do")
	public String memberDelete() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   memberDelete()      │");
		LOG.debug("└───────────────────────┘");
		
		return "member/memberDelete";
	}
	
	@RequestMapping(value = "/memberAgree.do")
	public String memberAgree() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   memberAgree()       │");
		LOG.debug("└───────────────────────┘");
		
		return "member/memberAgree";
	}
}
