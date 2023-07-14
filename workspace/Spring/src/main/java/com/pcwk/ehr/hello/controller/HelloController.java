package com.pcwk.ehr.hello.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {

	final Logger LOG = LogManager.getLogger(getClass());
	
	
	public HelloController() {
		LOG.debug("========================");
		LOG.debug("==HelloController()===");
		LOG.debug("========================");
	}
	
	@RequestMapping(value = "/hello/hello.do")
	public String hello() {
		LOG.debug("========================");
		LOG.debug("==hello()===");
		LOG.debug("========================");	
		///WEB-INF/views/+'hello/hello'+.jsp
		return "hello/hello";
	}
}
