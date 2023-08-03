package com.pcwk.ehr.controller;

import java.io.IOException;
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

import com.pcwk.ehr.VO.PostVO;
import com.pcwk.ehr.service.CmnCodeService;
import com.pcwk.ehr.service.MainService;
import com.pcwk.ehr.service.NaverSearchService;

@Controller
@RequestMapping
public class MainController {
	final Logger LOG = LogManager.getLogger(getClass());

	@Autowired
	NaverSearchService naverSearchService;

	@Autowired
	MainService mainService;
	
//	@Autowired
//	CmnCodeService cmnCodeService;

	@RequestMapping(value = "main/main.do")
	public String main() {
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

	// 단건조회
	@RequestMapping(value = {"/post/doSelectOne.do", "/main/doSelectOne.do"})
	public String doSelectOne(PostVO inVO,Model model ,HttpSession httpSession) throws SQLException {

		// 세션에 nickname을 "MJ"로 설정합니다.
        httpSession.setAttribute("nickname", "MJ");
		
        PostVO outVO = mainService.doSelectOne(inVO);
		
		mainService.doUpdateViews(inVO);
		model.addAttribute("outVO",outVO);
		
		//model.addAttribute("inVO",inVO);
		return "post/postContents";
	}

	@RequestMapping(value = "main/doRetrieve.do", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public List<PostVO> doRetrieve(@RequestParam(value ="categorynumber") String categorynumber) throws SQLException {

		List<PostVO> resultList = mainService.doRetrieve(categorynumber);
		

		return resultList;

	}

}
