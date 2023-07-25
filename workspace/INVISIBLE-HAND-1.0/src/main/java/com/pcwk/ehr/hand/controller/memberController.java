package com.pcwk.ehr.hand.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "member")	//WEB_INF아래 폴더이름을 적는곳.
public class memberController {
	
	final Logger LOG = LogManager.getLogger(getClass());

	
	@RequestMapping(value = "/memberLogin.do")
	public String memberLogin() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   memberLogin()       │");
		LOG.debug("└───────────────────────┘");
		
		return "member/memberLogin";
	}

	@RequestMapping(value = "/memberPWChange.do")
	public String memberPWChange() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   memberPWChange()    │");
		LOG.debug("└───────────────────────┘");
		
		return "member/memberPWChange";
	}
}
