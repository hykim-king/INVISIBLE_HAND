package com.pcwk.ehr.controller;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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

	//
	@RequestMapping(value = "/adminSubChargeChange.do")
	public String adminSubChargeChange() {
		lg.debug("┌─────────────────────────┐");
		lg.debug("│ adminSubChargeChange()  │");
		lg.debug("└─────────────────────────┘");

		return "admin/adminSubChargeChange";
	}
	
	 // 会員強制退会処理
    @RequestMapping(value = "/forceWithdraw.do")
    public String forceWithdraw(@RequestParam String memberId) {
        lg.debug("┌──────────────────┐");
        lg.debug("│ forceWithdraw()  │");
        lg.debug("└──────────────────┘");

     // 강제 탈퇴 처리 실행
        MemberVO member = new MemberVO();
        member.setMemberId(memberId);
        boolean result = adminService.forceWithdraw(member);

        if (result) {
            // 성공한 경우의 처리
            return "redirect:/admin/adminSearch.do"; // 탈퇴 후 회원 목록 화면으로 리다이렉트
        } else {
            // 실패한 경우의 처리
            // 에러 메시지 등을 설정하여 에러 페이지로 이동하는 것도 고려됩니다
            return "errorPage";
        }
    }
}