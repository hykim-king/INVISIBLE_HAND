package com.pcwk.ehr.hand.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pcwk.ehr.VO.MyPageVO;
import com.pcwk.ehr.cmn.MyPage;
import com.pcwk.ehr.service.MyPageService;


@Controller
@RequestMapping(value = "mypage")	//WEB_INF아래 폴더이름을 적는곳.
public class MypageController {
	
	final Logger LOG = LogManager.getLogger(getClass());
	
	 @Autowired
	 private MyPageService myPageService;
	
	
	@RequestMapping(value = "/mypage.do")
	public String mypage(Model model) {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ mypage()       	   │");
		LOG.debug("└───────────────────────┘");
		
		String memberId = "INHAND";
        MyPage myPage = myPageService.getMyPageByMemberId(memberId);

        model.addAttribute("userId", myPage.getMemberId());
        model.addAttribute("nickname", myPage.getNickname());
        model.addAttribute("email", myPage.getEmail());
        model.addAttribute("membershipLevel", myPage.getMembershipLevel());
		
		
		return "mypage/mypage";		//WEB_INF > views안에 있는! mypage폴더의 mypage.jsp파일을 리턴해줌.
	}
	
	@RequestMapping(value = "/mypageUpdate.do")
	public String mypageUpdate(MyPageVO myPageVO, Model model) {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ mypageUpdate()       │");
		LOG.debug("└───────────────────────┘");
		
		MyPage updatedMyPage = myPageService.getMyPageByMemberId(myPageVO.getMemberId());
        model.addAttribute("userId", updatedMyPage.getMemberId());
        model.addAttribute("nickname", updatedMyPage.getNickname());
        model.addAttribute("email", updatedMyPage.getEmail());
        model.addAttribute("membershipLevel", updatedMyPage.getMembershipLevel());
		
		return "mypage/mypageUpdate";		
	}
	
	@RequestMapping(value = "/mypageView.do")
	public String mypageView(Model model) {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ mypageView()          │");
		LOG.debug("└───────────────────────┘");
		
		String memberId = "INHAND";
        MyPage myPage = myPageService.getMyPageByMemberId(memberId);

        model.addAttribute("userId", myPage.getMemberId());
        model.addAttribute("nickname", myPage.getNickname());
        model.addAttribute("email", myPage.getEmail());
        model.addAttribute("membershipLevel", myPage.getMembershipLevel());

		
		return "mypage/mypageView";
	}
	
	@RequestMapping(value = "/mypageDelete.do")
	public String mypageDelete(Model model) {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ mypageDelete()       │");
		LOG.debug("└───────────────────────┘");
		
		return "mypage/mypageDelete";
	}
	
	@RequestMapping(value = "/mypagePayment.do")
	public String mypagePayment(Model model) {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ mypagePayment()       │");
		LOG.debug("└───────────────────────┘");
		
		String memberId = "INHAND";
        Object paymentInfo = myPageService.getPaymentInfoByMemberId(memberId);

        model.addAttribute("paymentInfo", paymentInfo);
		
		return "mypage/mypagePayment";
	}
	
	@RequestMapping(value = "/mypagePayedit.do")
	public String mypagePayedit(Model model) {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ mypagePayedit()       │");
		LOG.debug("└───────────────────────┘");
		
		String memberId = "INHAND";
        Object updatedPaymentInfo = myPageService.getPaymentInfoByMemberId(memberId);

        // 모델에 추가 작업
        model.addAttribute("paymentInfo", updatedPaymentInfo);

		
		return "mypage/mypagePayedit";
	}


	
}

