package com.pcwk.ehr.hand.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "mypage")	//WEB_INF아래 폴더이름을 적는곳.
public class MypageController {
	
	final Logger LOG = LogManager.getLogger(getClass());

	
	@RequestMapping(value = "/mypage.do")
	public String mypage() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ mypage()       	   │");
		LOG.debug("└───────────────────────┘");
		
		return "mypage/mypage";
	}

	
}
