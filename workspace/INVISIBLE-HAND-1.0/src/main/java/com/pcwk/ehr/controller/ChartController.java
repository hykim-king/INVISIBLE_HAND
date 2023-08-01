package com.pcwk.ehr.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "chart")	//WEB_INF아래 폴더이름을 적는곳.
public class ChartController {
	
	final Logger LOG = LogManager.getLogger(getClass());

	
	@RequestMapping(value = "/chart.do")
	public String chart() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ chart()               │");
		LOG.debug("└───────────────────────┘");
		
		return "chart/chart";
	}

	@RequestMapping(value = "/chartGraph.do")
	public String chartGraph() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ chartGraph()          │");
		LOG.debug("└───────────────────────┘");
		
		return "chart/chartGraph";
	}
}
