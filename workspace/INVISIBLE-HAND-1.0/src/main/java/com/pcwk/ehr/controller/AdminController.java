package com.pcwk.ehr.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.pcwk.ehr.VO.AdminVO;
import com.pcwk.ehr.VO.MemberVO;
import com.pcwk.ehr.VO.MessageVO;
import com.pcwk.ehr.cmn.StringUtil;
import com.pcwk.ehr.service.AdminService;
import com.pcwk.ehr.service.PostService;


@Controller
@RequestMapping(value = "admin") // WEB_INF아래 폴더이름을 적는곳.
public class AdminController {
	final Logger lg = LogManager.getLogger(getClass());
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	PostService postService;

	@RequestMapping(value = "/admin.do")
	public String admin() {
		return "admin/admin";
	}
	
	// 게시글 일괄 삭제
	@RequestMapping(value = "/deleteAll.do", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String deleteAll(HttpServletRequest req) throws SQLException {
	    String jsonString = "";
	    
	    String adminDel = req.getParameter("checkArr"); // checkArr의 배열을 toString으로 묶어서 가져옴
	    
	    String[] delAdminPostNums = adminDel.split(",");

	    List<Integer> delAdminPostList = new ArrayList<>();
	    for (String numStr : delAdminPostNums) {
	    	delAdminPostList.add(Integer.parseInt(numStr.trim()));
	    }
	    
	    int flag = this.postService.deleteAll(delAdminPostList);

	    String message = "";

	    if (1 > flag) {
			message = "게시글이 삭제되었습니다.";
		} else {
			message = "게시글 삭제를 실패했습니다.";
		}

	    jsonString = StringUtil.validMessageToJson(Integer.toString(flag) + "", message);

	    return jsonString;
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
	public String adminSubChargeChange(Model model) {
		lg.debug("┌─────────────────────────┐");
		lg.debug("│ adminSubChargeChange()  │");
		lg.debug("└─────────────────────────┘");

		List<AdminVO> resultList1 = adminService.getAllsubscriptionService(); // 회원정보 전부 가져옴. service호출.
		model.addAttribute("subscriptionlist", resultList1);

		return "admin/adminSubChargeChange";
	}
	
	//회원정보 표시
    @RequestMapping(value = "/get.do", method = RequestMethod.POST)
	@ResponseBody
	public String getSubscriptionDetails(String memberGradeName) {
    	lg.debug("┌─────────────────────────────┐");
    	lg.debug("│   getSubscriptionDetails()  │ memberGradeName: " + memberGradeName);
    	lg.debug("└─────────────────────────────┘");
    	

	    AdminVO adminInfo = new AdminVO();
	    adminInfo.setMemberGradeName(memberGradeName);
	    try {
	    	adminInfo = adminService.get(adminInfo);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	    
	    return new Gson().toJson(adminInfo);
	}

    
    // 회원정보 수정
    @RequestMapping(value = "/adminUpdate.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String updateMember(MemberVO member) throws SQLException {
    	lg.debug("┌───────────────────────┐");
        lg.debug("│   updateMember()      │ memberId: " + member.getMemberId());
        lg.debug("└───────────────────────┘");

        int result = adminService.adminUpdate(member);

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
    
    
    
    // 구독가격 수정
    @RequestMapping(value = "/update.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String updateSubscription(AdminVO admin) throws SQLException {
        lg.debug("┌─────────────────────────────┐");
        lg.debug("│   updateSubscription()      │ subscriptionPrice: " + admin.getSubscriptionPrice());
        lg.debug("└─────────────────────────────┘");

        int result = adminService.update(admin);

        MessageVO message = new MessageVO();
        if (result == 1) {
            message.setMsgId("1");
            message.setMsgContents("구독 가격이 업데이트되었습니다.");
        } else {
            message.setMsgId("0");
            message.setMsgContents("구독 정보 업데이트에 실패했습니다.");
        }

        return new Gson().toJson(message);
    }

}