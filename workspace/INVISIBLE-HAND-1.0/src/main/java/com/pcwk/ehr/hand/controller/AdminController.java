package com.pcwk.ehr.hand.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "admin")	//WEB_INF아래 폴더이름을 적는곳.
public class AdminController {
	
	final Logger LOG = LogManager.getLogger(getClass());

	
	@RequestMapping(value = "/admin.do")
	public String admin() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ admin()               │");
		LOG.debug("└───────────────────────┘");
		
		return "admin/admin";
	}


}
