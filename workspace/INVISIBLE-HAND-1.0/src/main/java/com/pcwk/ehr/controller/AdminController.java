package com.pcwk.ehr.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.pcwk.ehr.VO.MemberVO;
import com.pcwk.ehr.VO.MessageVO;
import com.pcwk.ehr.service.AdminService;

@Controller
@RequestMapping(value = "admin") // WEB_INF아래 폴더이름을 적는곳.
public class AdminController {
	final Logger LOG = LogManager.getLogger(getClass());

	@Autowired
	AdminService adminService;

	@RequestMapping(value = "/admin.do")
	public String admin() {
		LOG.debug("┌─────────┐");
		LOG.debug("│ admin() │");
		LOG.debug("└─────────┘");

		return "admin/admin";
	}

	// 회원조회
	@RequestMapping(value = "/adminSearch.do")
	public String adminSearch(Model model) {

		LOG.debug("┌────────────────┐");
		LOG.debug("│ adminSearch()  │");
		LOG.debug("└────────────────┘");

		List<MemberVO> resultList = adminService.getAllMemberService(); // 회원정보 전부 가져옴. service호출.
		model.addAttribute("memberList", resultList);

		return "admin/adminSearch";
	}

	//
	@RequestMapping(value = "/adminSubChargeChange.do")
	public String adminSubChargeChange() {
		LOG.debug("┌─────────────────────────┐");
		LOG.debug("│ adminSubChargeChange()  │");
		LOG.debug("└─────────────────────────┘");

		return "admin/adminSubChargeChange";
	}

	// 회원정보 표시
	@RequestMapping(value = "/get.do", method = RequestMethod.POST)
	@ResponseBody
	public String getMemberDetails(String memberId) {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   getMemberDetails()  │ memberId: " + memberId);
		LOG.debug("└───────────────────────┘");

		MemberVO memberInfo = new MemberVO();
		memberInfo.setMemberId(memberId);
		try {
			memberInfo = adminService.get(memberInfo);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

		return new Gson().toJson(memberInfo);
	}

	// 회원정보 수정
	@RequestMapping(value = "/update.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String updateMember(MemberVO member) throws SQLException {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   updateMember()      │ memberId: " + member.getMemberId());
		LOG.debug("└───────────────────────┘");

		int result = adminService.update(member);

		MessageVO message = new MessageVO();
		if (result == 1) {

			message.setMsgId("1");
			message.setMsgContents("회원 정보가 업데이트되었습니다.");
		} else {
			message.setMsgId("0");
			message.setMsgContents("회원 정보 업데이트에 실패했습니다.");
		}

		return new Gson().toJson(message);
	}

	// 회원강제탈퇴
	@RequestMapping(value = "/deleteOne.do", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String deleteOne(MemberVO member, HttpServletRequest req) throws SQLException {
		String jsonString = "";
		LOG.debug("┌──────────────────────────────┐");

		String memberId = req.getParameter("memberId");

		LOG.debug("│memberId:" + memberId);
		LOG.debug("│member:" + member);

		int flag = this.adminService.deleteOne(member);

		String message = "";
		if (1 == flag) {
			message = member.getMemberId() + "가 삭제 되었습니다.";
		} else {
			message = member.getMemberId() + " 삭제 실패";
		}

		MessageVO messageVO = new MessageVO(String.valueOf(flag), message);

		jsonString = new Gson().toJson(messageVO);
		LOG.debug("│jsonString:" + jsonString);
		LOG.debug("└──────────────────────────────┘");

		return jsonString;
	}
}
