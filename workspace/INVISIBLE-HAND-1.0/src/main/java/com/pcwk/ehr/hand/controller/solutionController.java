package com.pcwk.ehr.hand.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "solution")	//WEB_INF아래 폴더이름을 적는곳.
public class solutionController {
	
	final Logger LOG = LogManager.getLogger(getClass());

	
	@RequestMapping(value = "/solution_A.do")
	public String solution_A() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   solution_A()          │");
		LOG.debug("└───────────────────────┘");
		
		return "solution/solution_A";
	}

	@RequestMapping(value = "/solution_Q.do")
	public String solution_Q() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   solution_Q()          │");
		LOG.debug("└───────────────────────┘");
		
		return "solution/solution_Q";
	}

}
