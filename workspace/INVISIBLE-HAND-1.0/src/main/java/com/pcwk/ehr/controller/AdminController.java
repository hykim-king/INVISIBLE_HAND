package com.pcwk.ehr.controller;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pcwk.ehr.VO.MemberVO;
import com.pcwk.ehr.service.AdminService;

@Controller
@RequestMapping(value = "admin") // WEB_INF아래 폴더이름을 적는곳.
public class AdminController {
	final Logger lg = LogManager.getLogger(getClass());
	
	@Autowired
	AdminService adminService;
	
	@RequestMapping(value = "/admin.do")
	public String admin() {
		lg.debug("┌─────────┐");
		lg.debug("│ admin() │");
		lg.debug("└─────────┘");
		
		return "admin/admin";
	}

	//회원조회
	@RequestMapping(value = "/adminSearch.do")
	public String adminSearch(Model model) {

		lg.debug("┌────────────────┐");
		lg.debug("│ adminSearch()  │");
		lg.debug("└────────────────┘");
		
		List<MemberVO> resultList = adminService.getAllMemberService(); //회원정보 전부 가져옴. service호출.
		model.addAttribute("memberList",resultList);
		
		return "admin/adminSearch";
	}
	
	//공지사항
	@RequestMapping(value = "/adminNotice.do")
	public String adminNotice() {
		lg.debug("┌────────────────────┐");
		lg.debug("│ adminNotice() 	   │");
		lg.debug("└────────────────────┘");
		
		
		return "admin/adminNotice";
	}
	
	//게시판
	@RequestMapping(value = "/adminPost.do")
	public String adminPost() {
		lg.debug("┌──────────────────────────────┐");
		lg.debug("│ adminPost()  				 │");
		lg.debug("└──────────────────────────────┘");
		
		return "admin/adminPost";
	}
	
	//문의사항 답변
	@RequestMapping(value = "/adminQA.do")
	public String adminQA() {
		lg.debug("┌────────────┐");
		lg.debug("│ adminQA()  │");
		lg.debug("└────────────┘");
		
		return "admin/adminQA";
	}
	
	//
	@RequestMapping(value = "/adminSubChargeChange.do")
	public String adminSubChargeChange() {
		lg.debug("┌─────────────────────────┐");
		lg.debug("│ adminSubChargeChange()  │");
		lg.debug("└─────────────────────────┘");
		
		return "admin/adminSubChargeChange";
	}
	
}