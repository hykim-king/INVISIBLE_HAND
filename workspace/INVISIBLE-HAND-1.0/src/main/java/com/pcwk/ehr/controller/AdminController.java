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
import org.springframework.web.bind.annotation.ResponseBody;

import com.pcwk.ehr.VO.CmnCodeVO;
import com.pcwk.ehr.VO.MemberVO;
import com.pcwk.ehr.VO.PostVO;
import com.pcwk.ehr.cmn.StringUtil;
import com.pcwk.ehr.service.AdminService;
import com.pcwk.ehr.service.CmnCodeService;
import com.pcwk.ehr.service.PostService;

@Controller
@RequestMapping(value = "admin") // WEB_INF아래 폴더이름을 적는곳.
public class AdminController {
	final Logger lg = LogManager.getLogger(getClass());

	@Autowired
	AdminService adminService;

	@Autowired
	PostService postService;

	@Autowired
	CmnCodeService cmnCodeService;

	@RequestMapping(value = "/admin.do")
	public String admin() {
		lg.debug("┌─────────┐");
		lg.debug("│ admin() │");
		lg.debug("└─────────┘");

		return "admin/admin";
	}

	// 회원조회
	@RequestMapping(value = "/adminSearch.do")
	public String adminSearch(Model model) {

		lg.debug("┌────────────────┐");
		lg.debug("│ adminSearch()  │");
		lg.debug("└────────────────┘");

		List<MemberVO> resultList = adminService.getAllMemberService(); // 회원정보 전부 가져옴. service호출.
		model.addAttribute("memberList", resultList);

		return "admin/adminSearch";
	}

	// 공지사항
	@RequestMapping(value = "/adminNotice.do")
	public String adminNotice() {
		lg.debug("┌────────────────────┐");
		lg.debug("│ adminNotice() 	   │");
		lg.debug("└────────────────────┘");

		return "admin/adminNotice";
	}

	// 문의사항 답변
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

	
	@RequestMapping(value = "/adminPost.do")
	public String adminPost(PostVO inVO, Model model, HttpSession httpSession) throws SQLException {
		lg.debug("┌──────────────────────────────┐");
		lg.debug("│ adminPost()  				 │");
		lg.debug("└──────────────────────────────┘");
		

		return "admin/adminPost";
	}

}