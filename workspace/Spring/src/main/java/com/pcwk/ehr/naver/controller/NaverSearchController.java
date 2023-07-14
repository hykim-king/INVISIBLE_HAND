package com.pcwk.ehr.naver.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pcwk.ehr.cmn.DTO;
import com.pcwk.ehr.cmn.PcwkLoger;
import com.pcwk.ehr.naver.service.NaverSearchService;

@Controller("naverSearchController")
@RequestMapping("naver")
public class NaverSearchController implements PcwkLoger {

	
	@Autowired
	NaverSearchService  naverSearchService;
	
	public NaverSearchController() {
		LOG.debug("----------------------------------------------------------");
		LOG.debug("-NaverSearchController()-");
		LOG.debug("----------------------------------------------------------");
	}
	
	
	@RequestMapping("/searchView.do")
	public String view()throws IOException{
		
		LOG.debug("----------------------------------------------------------");
		LOG.debug("-view()-");
		LOG.debug("----------------------------------------------------------");		
		return "naver/naver_search";
	}
	
	
	@RequestMapping(value="/doNaverSearch.do",method = RequestMethod.GET
			,produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String doNaverSearch(DTO inVO)throws IOException{
		String jsonString = "";
		LOG.debug("----------------------------------------------------------");
		LOG.debug("-doNaverSearch()-");
		
		if(null != inVO && null ==inVO.getSearchDiv()) {
			inVO.setSearchDiv("10");
		}
		
		if(null != inVO && 0 ==inVO.getPageNo()) {
			inVO.setPageNo(1);
		}
		
		if(null != inVO && 0 ==inVO.getPageSize()) {
			inVO.setPageSize(10);
		}
		
		LOG.debug("-inVO()-");
		LOG.debug("----------------------------------------------------------");
		
		
		return naverSearchService.doNaverSearch(inVO);
	}
	
	
}



















