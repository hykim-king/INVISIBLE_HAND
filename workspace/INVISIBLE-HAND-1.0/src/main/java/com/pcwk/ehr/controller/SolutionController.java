package com.pcwk.ehr.controller;


import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonArray;
import com.pcwk.ehr.VO.ChartVO;
import com.pcwk.ehr.VO.RankVO;
import com.pcwk.ehr.VO.SolutionVO;
import com.pcwk.ehr.cmn.StringUtil;
import com.pcwk.ehr.service.RankService;
import com.pcwk.ehr.service.SolutionService;

@Controller
@RequestMapping(value = "solution")	//WEB_INF아래 폴더이름을 적는곳.
public class SolutionController {
	
	final Logger LOG = LogManager.getLogger(getClass());
	@Autowired
	SolutionService solutionService;
	
	@Autowired
	RankService rankservice;
	
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
	
	@RequestMapping(value="/doUpdateScore.do",method = RequestMethod.POST
	,produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String doUpdateScore(@RequestParam(value = "mainCategory") String mainCategory, 
								@RequestParam(value = "subCategory") String subCategory, RankVO inVO) throws SQLException {
		String jsonString = "";
		String message = "";
		inVO.setMainCategory(mainCategory);
		inVO.setSubCategory(subCategory);
		
		int flag = rankservice.doUpdateScore(inVO);
		
		if(flag ==1) {
			 message = String.format("%s-%s의 score에 점수를 1점 추가하였습니다.",mainCategory, subCategory);			
		}
		else {			
			 message = String.format("%s-%s의 score에 점수를 추가하지 못했습니다.",mainCategory, subCategory);
		}
		jsonString = StringUtil.validMessageToJson(flag+"", message);	
		return jsonString;
	}
	
	
	@RequestMapping(value="/getProductData.do",method = RequestMethod.POST
	,produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String getProductData(@RequestBody Map<String, Object> requestData) {
		String jsonString = "";
		JsonArray mainArray = new JsonArray();
		
		List<SolutionVO> solContentsList = new ArrayList<>();
	    List<Double> radioArr = (List<Double>) requestData.get("radioArr");
	    List<String> textArr = (List<String>) requestData.get("textArr");
	    List<String> checkArr = (List<String>) requestData.get("checkArr");
	    String totalScore = (String) requestData.get("totalScore");
	    ChartVO chartInVO = new ChartVO();
	    chartInVO.setMaincategory((String)requestData.get("mainCategory"));
	    chartInVO.setSubcategory((String)requestData.get("subCategory"));

	    solContentsList.addAll(solutionService.returnScoreContents(chartInVO,totalScore));
	    solContentsList.addAll(solutionService.returnRadioContents(radioArr));
	    solContentsList.addAll(solutionService.returnTextContents(textArr));
	    solContentsList.addAll(solutionService.returnCheckContents(checkArr));
	    
	    // 이후 데이터 처리 작업 수행
	    LOG.debug("파라미터가 radioArr:" + radioArr);
	    LOG.debug("파라미터가 textArr:" + textArr);
	    LOG.debug("파라미터가 checkArr:" + checkArr);
	    LOG.debug("파라미터가 totalScore:" + totalScore);
	    LOG.debug("파라미터가 solContentsList:" + solContentsList);
	    
	    
		for (SolutionVO outVO : solContentsList) {
			JsonArray sArray = new JsonArray();
			sArray.add(outVO.getSolname());
			sArray.add(outVO.getCodename());
			sArray.add(outVO.getSolcontents());
			mainArray.add(sArray);
		}
		
		jsonString = mainArray.toString();
		LOG.debug("=====================================");
		LOG.debug("jsonString" + jsonString);
		LOG.debug("=====================================");
		
	    return jsonString;
	}
	
	
}
