package com.pcwk.ehr.hand.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "main")	//WEB_INF아래 폴더이름을 적는곳.
public class MainController {
	
	final Logger LOG = LogManager.getLogger(getClass());

	
	@RequestMapping(value = "/main.do")
	public String main() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ main()       		   │");
		LOG.debug("└───────────────────────┘");
		
		return "main/main";
	}

	
}
