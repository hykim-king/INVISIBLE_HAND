package com.pcwk.ehr.controller;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.pcwk.ehr.VO.CommentVO;
import com.pcwk.ehr.VO.MemberVO;
import com.pcwk.ehr.VO.PaymentInfoVO;
import com.pcwk.ehr.VO.PostVO;
import com.pcwk.ehr.service.MailSendService;
import com.pcwk.ehr.service.MemberService;
import com.pcwk.ehr.service.MyPageService;
import com.pcwk.ehr.service.PaymentInfoService;
import com.pcwk.ehr.cmn.MessageVO;

@Controller
@RequestMapping(value = "mypage")	//WEB_INF아래 폴더이름을 적는곳.
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
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ mypage()       	   │");
		LOG.debug("└───────────────────────┘");
		
		return "mypage/mypage";
	}
	
	@RequestMapping(value = "/mypageUpdate.do")
	public String mypageUpdate() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ mypageUpdate()       	   │");
		LOG.debug("└───────────────────────┘");
		
		return "mypage/mypageUpdate";
	}
	
	 @RequestMapping(value="/nickcheck.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	    @ResponseBody
	    public String nickcheck(MemberVO member) throws Exception {
	        System.out.println("┌────────────────────────────────────────────────────────┐");
	        System.out.println("│ nickcheck()                                            │");
	        System.out.println("└────────────────────────────────────────────────────────┘");
	        
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
	 
	 @RequestMapping(value="/passwordcheck.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	    @ResponseBody
	    public String passwordcheck(MemberVO member) throws Exception {
	        System.out.println("┌────────────────────────────────────────────────────────┐");
	        System.out.println("│ passwordcheck()                                        │");
	        System.out.println("└────────────────────────────────────────────────────────┘");
	        
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
	 
	 @RequestMapping(value="/emailcheck.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	    @ResponseBody
	    public String emailcheck(MemberVO member) throws Exception {
	        System.out.println("┌────────────────────────────────────────────────────────┐");
	        System.out.println("│ emailcheck()                                           │");
	        System.out.println("└────────────────────────────────────────────────────────┘");
	        
	        String jsonString = "";
	        MessageVO message = new MessageVO();
	         
	        int emailcheck = memberService.emailCheck(member);
	        
	        if (emailcheck == 0) {
	                message.setMsgId("10");
	                message.setMsgContents("사용 가능한 이메일 입니다.");
	        } else {
	                message.setMsgId("20");
	                message.setMsgContents("이미 사용중인 이메일 입니다");
	        }
	        
	        jsonString = new Gson().toJson(message);
	        return jsonString;
	    }
		 
	 	@RequestMapping(value = "/**/mailSend.do", method = RequestMethod.GET)
			@ResponseBody
			public String mailSend(String email) {
				System.out.println("이메일 인증 요청이 들어옴!");
				System.out.println("이메일 인증 이메일 :"+email);
				return mailSend.joinEmail(email);
		}
	 	
	 	
	 	@RequestMapping(value="/updatemember.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
		    @ResponseBody
		    public String updatemember(MemberVO member) throws Exception {
		        System.out.println("┌────────────────────────────────────────────────────────┐");
		        System.out.println("│ updatemember()                                               │");
		        System.out.println("└────────────────────────────────────────────────────────┘");
		        
		        String jsonString = "";
		        MessageVO message = new MessageVO();
		         
		        int update = memberService.update(member);
		        if (update == 1) {
		                message.setMsgId("10");
		                message.setMsgContents("업데이트 완료");
		        } else {
		                message.setMsgId("20");
		                message.setMsgContents("업데이트 실패");
		        }
		        
		        jsonString = new Gson().toJson(message);
		        return jsonString;
		    }
	
	@RequestMapping(value = "/mypageDelete.do", method = RequestMethod.GET)
	public String mypageDelete() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ mypageDelete()       	   │");
		LOG.debug("└───────────────────────┘");
		
		return "mypage/mypageDelete";
	}
	
	 @RequestMapping(value="/mypageDelete.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	    @ResponseBody
	    public String DeleteOne(MemberVO member) throws SQLException {
	        System.out.println("┌────────────────────────────────────────────────────────┐");
	        System.out.println("│ delete()                                            │");
	        System.out.println("└────────────────────────────────────────────────────────┘");
	        
	        String jsonString = "";
	        MessageVO message = new MessageVO();
	         
	        int delete = memberService.deleteOne(member);
	        
	        if (delete == 1) {
	                message.setMsgId("10");
	                message.setMsgContents("회원 삭제 완료.");
	        } else {
	                message.setMsgId("20");
	                message.setMsgContents("회원 삭제 실패했습니다.");
	        }
	        
	        jsonString = new Gson().toJson(message);
	        return jsonString;
	    }


	@RequestMapping(value = "/mypagePayedit.do")
	public String mypagePayedit() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ mypagePayedit()       	   │");
		LOG.debug("└───────────────────────┘");
		
		return "mypage/mypagePayedit";
	}
	
	
	@RequestMapping(value = "/mypagePayment.do",method = RequestMethod.GET)
	public void mypagePayment(Model model,MemberVO member,
		@RequestParam(value = "buyerEmail",required = false, defaultValue = "") String buyerEmail) throws SQLException{
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ mypagePayment()       	   │");
		LOG.debug("└───────────────────────┘");
		
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ buyerEmail()       	   ::"+ buyerEmail);
		LOG.debug("└───────────────────────┘");

		
		List<PaymentInfoVO> list = null;
		
		list = myPageService.paylist(buyerEmail);
		
		model.addAttribute("list",list);
	}
	
	@RequestMapping(value = "/mypost.do",method = RequestMethod.GET)
	public void mypost(Model model,MemberVO member,
		@RequestParam(value = "nickname",required = false, defaultValue = "") String nickname) throws SQLException{
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ mypost()       	   │");
		LOG.debug("└───────────────────────┘");
		
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ nickname()       	   ::"+ nickname);
		LOG.debug("└───────────────────────┘");

		
		List<PostVO> list = null;
		
		list = myPageService.postlist(nickname);
		
		model.addAttribute("list",list);
	}
	
	@RequestMapping(value = "/mycomment.do",method = RequestMethod.GET)
	public void mycomment(Model model,MemberVO member,
		@RequestParam(value = "nickname",required = false, defaultValue = "") String nickname) throws SQLException{
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ mycomment()       	   │");
		LOG.debug("└───────────────────────┘");
		
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ nickname()       	   ::"+ nickname);
		LOG.debug("└───────────────────────┘");

		
		List<CommentVO> list = null;
		
		list = myPageService.commentlist(nickname);
		
		model.addAttribute("list",list);
	}
	
	@RequestMapping(value = "/myqna.do",method = RequestMethod.GET)
	public void myqna(Model model,MemberVO member,
		@RequestParam(value = "nickname",required = false, defaultValue = "") String nickname) throws SQLException{
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ mypost()       	   │");
		LOG.debug("└───────────────────────┘");
		
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ nickname()       	   ::"+ nickname);
		LOG.debug("└───────────────────────┘");

		
		List<PostVO> list = null;
		
		list = myPageService.qnalist(nickname);
		
		model.addAttribute("list",list);
	}
	public String mypageView() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ mypageView()       	   │");
		LOG.debug("└───────────────────────┘");
		
		return "mypage/mypageView";
	}
	
}
