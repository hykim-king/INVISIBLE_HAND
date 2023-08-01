package com.pcwk.ehr.controller;

import java.io.IOException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pcwk.ehr.VO.BoardVO;
import com.pcwk.ehr.service.MainService;
import com.pcwk.ehr.service.NaverSearchService;

@Controller
@RequestMapping(value = "main") // WEB_INF아래 폴더이름을 적는곳.
public class MainController {
	final Logger LOG = LogManager.getLogger(getClass());

	@Autowired
	NaverSearchService naverSearchService;
	
	@Autowired
	MainService mainService;
	
	@RequestMapping(value = "/main.do")
	public String main() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ main()       		   │");
		LOG.debug("└───────────────────────┘");

		return "main/main";
	}

	// AJAX 통신을 위한 메서드제작 //검색 기본 단어 query를 ajax에서 정할 것임. //일단 기본 값은 "중소기업" 이후 변경
	@RequestMapping(value = "/doNaverSearch.do", method = RequestMethod.GET, 
			produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String doNaverSearch(@RequestParam(value = "query", defaultValue = "중소기업") String query) throws IOException {
		
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ doNaverSearch()       │");
		LOG.debug("└───────────────────────┘");

		
		return naverSearchService.doNaverSearch(query);
	}
	
	

	@RequestMapping(value = "/mainBoard.do", method = RequestMethod.GET, 
			produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String doSelectOne(BoardVO inVO) throws IOException {
		String jsonString = "";
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ doNaverSearch()       │");
		LOG.debug("└───────────────────────┘");
		
		
		return "";
	}

}
