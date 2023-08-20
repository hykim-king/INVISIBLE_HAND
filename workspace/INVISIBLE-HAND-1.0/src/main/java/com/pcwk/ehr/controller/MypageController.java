package com.pcwk.ehr.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pcwk.ehr.service.PaymentInfoService;

@Controller
@RequestMapping(value = "mypage")	//WEB_INF아래 폴더이름을 적는곳.
public class MypageController {
	
	final Logger LOG = LogManager.getLogger(getClass());
	
	@Autowired
	PaymentInfoService payService;

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
	
	@RequestMapping(value = "/mypageDelete.do")
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
	@RequestMapping(value = "/mypagePayment.do")
	public String mypagePayment() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ mypagePayment()       	   │");
		LOG.debug("└───────────────────────┘");
		
		return "mypage/mypagePayment";
	}
	
	public String mypageView() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ mypageView()       	   │");
		LOG.debug("└───────────────────────┘");
		
		return "mypage/mypageView";
	}
	
}
