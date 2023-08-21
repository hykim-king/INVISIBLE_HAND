package com.pcwk.ehr.controller;


import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pcwk.ehr.VO.ChartVO;
import com.pcwk.ehr.service.SolutionService;

@Controller
@RequestMapping(value = "solution")	//WEB_INF아래 폴더이름을 적는곳.
public class SolutionController {
	
	final Logger LOG = LogManager.getLogger(getClass());
	@Autowired
	SolutionService solutionService;
	
	@RequestMapping(value = "/solution_Q.do")
	public String solutionQ(Model model) {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   solution_Q()        │");
		LOG.debug("└───────────────────────┘");
		ChartVO inVO = new ChartVO();
		
		List<ChartVO> mainCategory = solutionService.SelectMaincategory(inVO);
		model.addAttribute("mainCategory", mainCategory);
		return "solution/solution_Q-00select";
	}
	@RequestMapping(value = "/solution_Q-01product.do")
	public String solutionQ1() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   solution_Q01()        │");
		LOG.debug("└───────────────────────┘");
		
		return "solution/solution_Q-01product";
	}
	@RequestMapping(value = "/solution_Q-02noproduct.do")
	public String solutionQ2() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   solution_Q02()        │");
		LOG.debug("└───────────────────────┘");
		
		return "solution/solution_Q-02noproduct";
	}
	
	
	@RequestMapping(value="/solution_A.do")
	public String solutionA(){
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│  solution_A()         │");
		LOG.debug("└───────────────────────┘");
	
		
		return "solution/solution_A";
	}
	
	
	@RequestMapping(value="/solution_AgetData.do",method = RequestMethod.POST
	,produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String solution_AgetData(ArrayList<String> radioArr, 
			ArrayList<String> textArr, 
			ArrayList<String> checkArr,
             String totalScore){
	
		
		
		return "";
	}
	

	
}
