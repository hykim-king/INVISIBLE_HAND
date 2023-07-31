package com.pcwk.ehr.hand.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "payment")	//WEB_INF아래 폴더이름을 적는곳.
public class PaymentController {
	
	final Logger LOG = LogManager.getLogger(getClass());

	
	@RequestMapping(value = "/payment.do")
	public String payment() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   payment()           │");
		LOG.debug("└───────────────────────┘");
		
		return "payment/payment";
	}

	
}
