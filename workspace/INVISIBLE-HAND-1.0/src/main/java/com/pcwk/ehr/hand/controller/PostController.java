package com.pcwk.ehr.hand.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "post")	//WEB_INF아래 폴더이름을 적는곳.
public class PostController {
	
	final Logger LOG = LogManager.getLogger(getClass());

	
	@RequestMapping(value = "/postList.do")
	public String postList() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   postList()          │");
		LOG.debug("└───────────────────────┘");
		
		return "post/postList";
	}

	@RequestMapping(value = "/postContents.do")
	public String postContents() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   postContents()      │");
		LOG.debug("└───────────────────────┘");
		
		return "post/postContents";
	}
	@RequestMapping(value = "/postReg.do")
	public String postReg() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   postReg()           │");
		LOG.debug("└───────────────────────┘");
		
		return "post/postReg";
	}
	
}
