package com.pcwk.ehr.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pcwk.ehr.VO.BoardVO;
import com.pcwk.ehr.cmn.StringUtil;
import com.pcwk.ehr.service.BoardService;

import com.pcwk.ehr.cmn.PcwkLoger;
import com.pcwk.ehr.service.AdminService;
import com.pcwk.ehr.VO.MemberVO;

@Controller
@RequestMapping(value = "admin") // WEB_INF아래 폴더이름을 적는곳.
public class AdminController {
	final Logger lg = LogManager.getLogger(getClass());
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping(value = "/admin.do")
	public String admin() {
		lg.debug("┌─────────┐");
		lg.debug("│ admin() │");
		lg.debug("└─────────┘");
		
		return "admin/admin";
	}

	@RequestMapping(value = "/adminSearch.do")
	public String adminSearch() {
		lg.debug("┌────────────────┐");
		lg.debug("│ adminSearch()  │");
		lg.debug("└────────────────┘");
		
		return "admin/adminSearch";
	}
	
	@RequestMapping(value = "/adminMembersUnsubscribe.do")
	public String adminMembersUnsubscribe() {
		lg.debug("┌───────────────────────────┐");
		lg.debug("│ adminMembersUnsubscribe() │");
		lg.debug("└───────────────────────────┘");
		
		return "admin/adminMembersUnsubscribe";
	}
	
	@RequestMapping(value = "/adminPostNotice.do")
	public String adminPostNotice() {
		lg.debug("┌────────────────────┐");
		lg.debug("│ adminPostNotice()  │");
		lg.debug("└────────────────────┘");
		
		return "admin/adminPostNotice";
	}
	
	@RequestMapping(value = "/adminModifyingAndDeletion.do")
	public String adminModifyingAndDeletion() {
		lg.debug("┌──────────────────────────────┐");
		lg.debug("│ adminModifyingAndDeletion()  │");
		lg.debug("└──────────────────────────────┘");
		
		return "admin/adminModifyingAndDeletion";
	}
	
	@RequestMapping(value = "/adminQA.do")
	public String adminQA() {
		lg.debug("┌────────────┐");
		lg.debug("│ adminQA()  │");
		lg.debug("└────────────┘");
		
		return "admin/adminQA";
	}
	
	@RequestMapping(value = "/adminSubChargeChange.do")
	public String adminSubChargeChange() {
		lg.debug("┌─────────────────────────┐");
		lg.debug("│ adminSubChargeChange()  │");
		lg.debug("└─────────────────────────┘");
		
		return "admin/adminSubChargeChange";
	}
	
	@RequestMapping(value = "/adminSubBadgeManagement.do")
	public String adminSubBadgeManagement() {
		lg.debug("┌────────────────────────────┐");
		lg.debug("│ adminSubBadgeManagement()  │");
		lg.debug("└────────────────────────────┘");
		
		return "admin/adminSubBadgeManagement";
	}
	
	
}