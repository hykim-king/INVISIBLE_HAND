package com.pcwk.ehr.controller;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.pcwk.ehr.service.ChartService;

@Controller
@RequestMapping(value = "chart")	//WEB_INF아래 폴더이름을 적는곳.
public class ChartController {
	
	final Logger LOG = LogManager.getLogger(getClass());

	@Autowired
	ChartService chartSerivce;
	
//  기존것 관련하여 내비둠. 
//	@RequestMapping(value = "/chart.do")
//	public String chart() {
//		LOG.debug("┌───────────────────────┐");
//		LOG.debug("│ chart()               │");
//		LOG.debug("└───────────────────────┘");
//		
//		return "chart/chart";
//	}
	
	//chartGraph 였음. db랑 연결된게 아니기 때문에 chart()로 변경
	@RequestMapping(value = "/chart.do")
	public String chart() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ chartGraph()          │");
		LOG.debug("└───────────────────────┘");
		
		return "chart/chartGraph";
	}
	

}
