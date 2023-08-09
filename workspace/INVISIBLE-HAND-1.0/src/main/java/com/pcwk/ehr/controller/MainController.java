package com.pcwk.ehr.controller;

import java.io.IOException;
import java.sql.SQLException;
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

import com.google.gson.JsonArray;
import com.pcwk.ehr.VO.ChartVO;
import com.pcwk.ehr.VO.PostVO;
import com.pcwk.ehr.VO.RankVO;
import com.pcwk.ehr.service.ChartService;
import com.pcwk.ehr.service.MainService;
import com.pcwk.ehr.service.NaverSearchService;
import com.pcwk.ehr.service.RankService;

@Controller
@RequestMapping
public class MainController {
	final Logger LOG = LogManager.getLogger(getClass());

	@Autowired
	NaverSearchService naverSearchService;

	@Autowired
	MainService mainService;	
	
	@Autowired
	ChartService chartService;
	
	@Autowired
	RankService rankService;
	
	@RequestMapping(value = "main/main.do")
	public String main() throws SQLException {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ main()       		   │");
		LOG.debug("└───────────────────────┘");

		
		return "main/main";
	}

	// AJAX 통신을 위한 메서드제작 //검색 기본 단어 query를 ajax에서 정할 것임. //일단 기본 값은 "중소기업" 이후 변경
	@RequestMapping(value = "main/doNaverSearch.do", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String doNaverSearch(@RequestParam(value = "query", defaultValue = "중소기업") String query) throws IOException {

		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ doNaverSearch()       │");
		LOG.debug("└───────────────────────┘");

		return naverSearchService.doNaverSearch(query);
	}

	
	//게시글 자유게시판('10' 좋아요 순으로 5개 조회)
	@RequestMapping(value = "main/doRetrieve.do", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public List<PostVO> doRetrieve(PostVO inVO) throws SQLException {
		
		List<PostVO> resultList = mainService.doRetrieve(inVO);
			
		LOG.debug("┌───────────────────────┐");
		LOG.debug("resultList"+resultList);
		LOG.debug("└───────────────────────┘");
		
		return resultList;
	}
	
	
	//차트 기능 구현(jsonArray에 값을 저장,구글 chart에서 원하는 데이터인 이중 배열로 만듬)
	@RequestMapping(value="main/chartGraph.do",method = RequestMethod.GET
			,produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String chartGraph(ChartVO inVO) {
		String jsonString = "";
		
		List<ChartVO> chartData = chartService.chartGraph(inVO);
		
		JsonArray mainArray=new JsonArray();
		
		for(ChartVO outVO  :chartData) {
			JsonArray sArray=new JsonArray();
			sArray.add(outVO.getChartseq());
			sArray.add(outVO.getYear());
			sArray.add(outVO.getOne());
			sArray.add(outVO.getTwo());
			sArray.add(outVO.getThree());
			
			mainArray.add(sArray);
		}
		jsonString = mainArray.toString();
		
		LOG.debug("=====================================");
		LOG.debug("jsonString"+jsonString);
		LOG.debug("=====================================");
		return jsonString;
	}
	
	
	//1. 랭킹 정보 main 화면에 출력할 로직
	@RequestMapping(value="main/Rank.do",method = RequestMethod.GET
			,produces = "application/json;charset=UTF-8")
	@ResponseBody
	public List<RankVO> doGetRanking(RankVO inVO) throws SQLException {
		List<RankVO> rankData = rankService.doGetRanking(inVO);
		LOG.debug("┌───────────────────────┐");
		LOG.debug("rankData"+rankData);
		LOG.debug("└───────────────────────┘");
		
		return rankData;
	}
	


}
