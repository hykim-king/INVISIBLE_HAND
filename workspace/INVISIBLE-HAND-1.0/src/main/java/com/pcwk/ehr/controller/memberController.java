package com.pcwk.ehr.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.pcwk.ehr.VO.MemberVO;
import com.pcwk.ehr.cmn.MessageVO;
import com.pcwk.ehr.service.MemberService;

@Controller("membercontroller")
@RequestMapping(value = "member")	//WEB_INF아래 폴더이름을 적는곳.
public class memberController {
	
	final Logger LOG = LogManager.getLogger(getClass());

	@Autowired

	
	private final MemberService memberService;

	public memberController(MemberService memberService) {
		this.memberService = memberService;
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
		int result = memberService.nickNameCheck(member);
		String message = "";
		try {
			if(result == 1) {
				message = "중복된 닉네임입니다.";
			}else if(result == 0) {
				message = "사용 가능한 닉네임입니다.";
				memberService.nickNameCheck(member);
			}

		} catch (Exception e) {
			throw new RuntimeException();
		}
		
		
		return "nickNameCheck";
	}


	
	@RequestMapping(value = "/memberLogin.do")
	public String memberLogin() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   memberLogin()       │");
		LOG.debug("└───────────────────────┘");
		
		return "member/memberLogin";
	}
	
	// 로그인  

	@RequestMapping(value = "/doLogin.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	@ResponseStatus(HttpStatus.OK)
	public Object doLogin(MemberVO member, HttpSession httpSession, HttpServletResponse response) throws SQLException, ClassNotFoundException {
	    LOG.debug("┌────────────────────────────┐");
	    LOG.debug("│  member: " + member);
	    MessageVO message = new MessageVO();

	    // 1. id 미입력
	    if (null == member.getMemberId() || "".equals(member.getMemberId())) {
	        message.setMsgId("1");
	        message.setMsgContents("아이디를 입력하세요.");
	        return message;
	    }
	    // 2. pw 미입력
	    if (null == member.getPassword() || "".equals(member.getPassword())) {
	        message.setMsgId("2");
	        message.setMsgContents("비밀번호를 입력하세요.");
	        return message;
	    }

	    // 10 : id 오류
	    // 20 : 비번 오류
	    // 30 : 성공
	    int status = memberService.doLogin(member);

	    if (10 == status) {
	        message.setMsgId("10");
	        message.setMsgContents("아이디를 확인하세요.");
	        return message;
	    } else if (20 == status) {
	        message.setMsgId("20");
	        message.setMsgContents("비밀번호를 확인하세요.");
	        return message;
	    } else if (30 == status) {
	        message.setMsgId("30");
	        message.setMsgContents(member.getMemberName() + "님 로그인되었습니다.");

	        // 사용자 정보 조회: session 처리
	        MemberVO memberInfo = memberService.get(member);
	        if (null != memberInfo) {
	            // session 설정
	            httpSession.setAttribute("member", memberInfo);
	        } else {
	            message.setMsgId("99");
	            message.setMsgContents("알 수 없는 오류");
	            return message;
	        }

	        // 리다이렉트 처리
	        response.setHeader("Location", "/ehr/main/main.do");
	        response.setStatus(HttpServletResponse.SC_FOUND);
	        return message;
	    }

	    LOG.debug("└────────────────────────────┘");

	    return message;
	}
	
	//회원 가입페이지
	@RequestMapping(value = "/memberJoin.do")
	public String memberJoin() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   memberJoin()        │");
		LOG.debug("└───────────────────────┘");
		
		return "member/memberJoin";
	}
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
