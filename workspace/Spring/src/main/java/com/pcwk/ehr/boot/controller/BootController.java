package com.pcwk.ehr.boot.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("boot")
public class BootController {

	final Logger LOG = LogManager.getLogger(getClass());
	
	public BootController() {}
	
	@RequestMapping(value = "/bootList.do")
	public String bootList() {
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│bootList                      │");
		LOG.debug("└──────────────────────────────┘");
		
		return "boot/boot_list";
	}
	
	@RequestMapping(value = "/bootReg.do")
	public String bootReg() {
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│bootReg                       │");
		LOG.debug("└──────────────────────────────┘");
		
		return "boot/boot_reg";
	}	
	
	@RequestMapping(value = "/dy_event.do")
	public String dy_event() {
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│dy_event                      │");
		LOG.debug("└──────────────────────────────┘");
		
		return "boot/dy_event";
	}	
}
