package com.pcwk.ehr.controller;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.pcwk.ehr.VO.CommentVO;
import com.pcwk.ehr.VO.MemberVO;
import com.pcwk.ehr.VO.PaymentInfoVO;
import com.pcwk.ehr.VO.PostVO;
import com.pcwk.ehr.cmn.MessageVO;
import com.pcwk.ehr.service.MailSendService;
import com.pcwk.ehr.service.MemberService;
import com.pcwk.ehr.service.MyPageService;
import com.pcwk.ehr.service.PaymentInfoService;

@Controller
@RequestMapping(value = "mypage") // WEB_INF아래 폴더이름을 적는곳.
public class MypageController {

	final Logger LOG = LogManager.getLogger(getClass());

	@Autowired
	PaymentInfoService payService;

	@Autowired
	MyPageService myPageService;

	@Autowired
	MemberService memberService;

	@Autowired
	MailSendService mailSend;

	@RequestMapping(value = "/mypage.do")
	public String mypage() {

		return "mypage/mypage";
	}

	@RequestMapping(value = "/mypageUpdate.do")
	public String mypageUpdate() {

		return "mypage/mypageUpdate";
	}

	@RequestMapping(value = "/nickcheck.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String nickcheck(MemberVO member) throws Exception {
		String jsonString = "";
		MessageVO message = new MessageVO();

		int nickcheck = memberService.nickNameCheck(member);

		if (nickcheck == 0) {
			message.setMsgId("10");
			message.setMsgContents("사용 가능한 닉네임 입니다.");
		} else {
			message.setMsgId("20");
			message.setMsgContents("이미 사용중인 닉네임 입니다");
		}

		jsonString = new Gson().toJson(message);
		return jsonString;
	}

	@RequestMapping(value = "/passwordcheck.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String passwordcheck(MemberVO member) throws Exception {

		String jsonString = "";
		MessageVO message = new MessageVO();

		int passCheck = memberService.passCheck(member);

		if (passCheck == 0) {
			message.setMsgId("10");
			message.setMsgContents("사용 가능한 비밀번호 입니다.");
		} else {
			message.setMsgId("20");
			message.setMsgContents("이미 사용중인 비밀번호 입니다");
		}

		jsonString = new Gson().toJson(message);
		return jsonString;
	}

	@RequestMapping(value = "/emailcheck.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String emailcheck(MemberVO member) throws Exception {

		String jsonString = "";
		MessageVO message = new MessageVO();

		int emailcheck = memberService.emailCheck(member);

		if (emailcheck == 1) {
			message.setMsgId("10");
			message.setMsgContents("이메일을 전송하시겠습니가 ?");
		} else {
			message.setMsgId("20");
			message.setMsgContents("이메일을 전송할 수 없습니다.");
		}

		jsonString = new Gson().toJson(message);
		return jsonString;
	}

	@RequestMapping(value = "/**/mailSend.do", method = RequestMethod.GET)
	@ResponseBody
	public String mailSend(String email) {
		System.out.println("이메일 인증 요청이 들어옴!");
		System.out.println("이메일 인증 이메일 :" + email);
		return mailSend.joinEmail(email);
	}

	@RequestMapping(value = "/mypageDelete.do", method = RequestMethod.GET)
	public String mypageDelete() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ mypageDelete()       	   │");
		LOG.debug("└───────────────────────┘");

		return "mypage/mypageDelete";
	}

	@RequestMapping(value = "/mypagePayedit.do")
	public String mypagePayedit() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ mypagePayedit()       	   │");
		LOG.debug("└───────────────────────┘");

		return "mypage/mypagePayedit";
	}

	@RequestMapping(value = "/mypagePayment.do", method = RequestMethod.GET)
	public void mypagePayment(Model model, MemberVO member,
			@RequestParam(value = "buyerEmail", required = false, defaultValue = "") String buyerEmail)
			throws SQLException {

		List<PaymentInfoVO> paymentList = payService.getPaymentListByEmail(buyerEmail); // 객체에 정보 담기

		model.addAttribute("list", paymentList);

	}

	@RequestMapping(value = "/mypost.do", method = RequestMethod.GET)
	public void mypost(Model model, MemberVO member,
			@RequestParam(value = "nickname", required = false, defaultValue = "") String nickname)
			throws SQLException {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ mypost()       	   │");
		LOG.debug("└───────────────────────┘");

		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ nickname()       	   ::" + nickname);
		LOG.debug("└───────────────────────┘");

		List<PostVO> list = myPageService.postlist(nickname);

		model.addAttribute("list", list);
	}

	@RequestMapping(value = "/mycomment.do", method = RequestMethod.GET)
	public void mycomment(Model model, MemberVO member,
			@RequestParam(value = "nickname", required = false, defaultValue = "") String nickname)
			throws SQLException {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ mycomment()       	   │");
		LOG.debug("└───────────────────────┘");

		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ nickname()       	   ::" + nickname);
		LOG.debug("└───────────────────────┘");

		List<CommentVO> list = myPageService.commentlist(nickname);

		model.addAttribute("list", list);
	}

	@RequestMapping(value = "/myqna.do", method = RequestMethod.GET)
	public void myqna(Model model, MemberVO member,
			@RequestParam(value = "nickname", required = false, defaultValue = "") String nickname)
			throws SQLException {

		List<PostVO> list = myPageService.qnalist(nickname);

		model.addAttribute("list", list);
	}

	public String mypageView() {

		return "mypage/mypageView";
	}

}
