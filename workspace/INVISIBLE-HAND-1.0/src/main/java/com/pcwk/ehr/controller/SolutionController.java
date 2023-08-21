package com.pcwk.ehr.controller;


import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

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
import com.pcwk.ehr.VO.RankVO;
import com.pcwk.ehr.service.RankService;
import com.pcwk.ehr.service.SolutionService;

@Controller
@RequestMapping(value = "solution")	//WEB_INF아래 폴더이름을 적는곳.
public class SolutionController {
	
	final Logger LOG = LogManager.getLogger(getClass());
	@Autowired
	SolutionService solutionService;
	
	@Autowired
	RankService rankService;
	
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
		LOG.debug("│   solution_Q()        │");
		LOG.debug("└───────────────────────┘");
		
		return "solution/solution_Q-01product";
	}
	
	
	@RequestMapping(value = "/solution_Q-02noproduct.do")
	public String solutionQ2() {

	    LOG.debug("┌───────────────────────┐");
	    LOG.debug("│   solution_Q()        │");
	    LOG.debug("└───────────────────────┘");
	    return "solution/solution_Q-02noproduct";
	}



	@RequestMapping(value = "/solution_A.do")
	public String solutionA() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│  solution_A()         │");
		LOG.debug("└───────────────────────┘");
		
		return "solution/solution_A";
	}
	
	
	
	@RequestMapping(value = "/doUpdateScore.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String doUpdateScore(@RequestParam(value = "mainCategory") String mainCategory, @RequestParam(value = "subCategory") String subCategory, RankVO inVO) throws SQLException {
		String jsonString = "";
		String message = "";
		
		inVO.setMainCategory(mainCategory);
		inVO.setSubCategory(subCategory);
		
		int ScoreUpdate =  rankService.doUpdateScore(inVO);
		
		if(ScoreUpdate == 1) {
			message =  String.format("%s-%s의 Score에 +1 점을 수행하였습니다.", mainCategory, subCategory);
		}else {
			message =  String.format("%s-%s Score의 update에 실패하였습니다.", mainCategory, subCategory);
		}
		
		jsonString = message;
		
		return jsonString;	
	}
	
}
