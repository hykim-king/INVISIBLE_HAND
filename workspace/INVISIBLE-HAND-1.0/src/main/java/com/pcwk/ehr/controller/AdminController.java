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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.pcwk.ehr.VO.AdminVO;
import com.pcwk.ehr.VO.CmnCodeVO;
import com.pcwk.ehr.VO.MemberVO;
import com.pcwk.ehr.VO.MessageVO;
import com.pcwk.ehr.cmn.StringUtil;
import com.pcwk.ehr.service.AdminService;
import com.pcwk.ehr.service.CmnCodeService;
import com.pcwk.ehr.service.PostService;


@Controller
@RequestMapping(value = "admin") // WEB_INF아래 폴더이름을 적는곳.
public class AdminController {
	final Logger LOG = LogManager.getLogger(getClass());
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	PostService postService;
	
	@Autowired
	CmnCodeService cmnCodeService;
	
	
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
	
	
	  // 회원정보 수정
    @RequestMapping(value = "/adminUpdate.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String updateMember(MemberVO member) throws SQLException {
    	LOG.debug("┌───────────────────────┐");
    	LOG.debug("│   updateMember()      │ memberId: " + member.getMemberId());
    	LOG.debug("└───────────────────────┘");

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
    
    @RequestMapping(value = "/adminSearch.do")
    public String memberList(MemberVO inVO, Model model,HttpServletRequest request) throws SQLException {
      
    	
        
    	// page번호 초기값 1
		if (null != inVO && inVO.getPageNo() == 0) {
			inVO.setPageNo(1);
		}
        
        
		// pageSize 초기값 10
		if (null != inVO && inVO.getPageSize() == 0) {
			inVO.setPageSize(10);
		}
        
        
		// searchWord 초기값: 전체 
 		if (null != inVO && null == inVO.getSearchWord()) {
 			inVO.setSearchWord("");
 		}
        
        
		//searchDiv
		if (null != inVO && null == inVO.getSearchDiv()) {
			inVO.setSearchDiv("");
		}
        
        
        // 코드조회: 검색코드
        CmnCodeVO cmnCodeVO = new CmnCodeVO();
        cmnCodeVO.setMasterCode("MEMBERSERACH");
        List<CmnCodeVO> searchList = cmnCodeService.doSearch(cmnCodeVO);
        model.addAttribute("searchList", searchList);
        
		LOG.debug("┌───────────────────────┐");
	    LOG.debug("│   searchList:         │"+searchList);
	 	LOG.debug("└───────────────────────┘");
        
        List<MemberVO> list = adminService.doRetrieve(inVO);
        model.addAttribute("list", list);
        
		LOG.debug("┌───────────────────────┐");
	    LOG.debug("│   list:               │"+list);
	 	LOG.debug("└───────────────────────┘");
        
        
        int totalCnt = 0;
        if(null !=list && list.size() >0 ) {
			totalCnt = list.get(0).getTotalCnt();
			LOG.debug("totalCnt:" + totalCnt);
		}

    	model.addAttribute("totalCnt", totalCnt);
		model.addAttribute("inVO", inVO);
		
		LOG.debug("┌───────────────────────┐");
	    LOG.debug("│   inVO:               │"+inVO);
	 	LOG.debug("└───────────────────────┘");


        return "admin/adminSearch";
    }
    
    
    

    
    
	//회원정보 표시
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
    
    // 회원강제탈퇴
	@RequestMapping(value = "/deleteOne.do", method = RequestMethod.GET,produces = "application/json;charset=UTF-8")
	@ResponseBody 
	public String deleteOne(MemberVO member, HttpServletRequest req) throws SQLException{
		String jsonString = "";
		LOG.debug("┌──────────────────────────────┐");
		
		String memberId = req.getParameter("memberId");
		
		LOG.debug("│memberId:"+memberId);
		LOG.debug("│member:"+member);
		
		int flag=this.adminService.deleteOne(member);
		
		String message = "";
		if(1==flag) {
			message = member.getMemberId()+"가 삭제 되었습니다.";
		}else {
			message = member.getMemberId()+" 삭제 실패";
		}
		
		MessageVO messageVO=new MessageVO(String.valueOf(flag),message);
		
		jsonString = new Gson().toJson(messageVO);
		LOG.debug("│jsonString:"+jsonString);
		LOG.debug("└──────────────────────────────┘");
		
		return jsonString;
	}
    
    
    
    
    
	//구독정보
	@RequestMapping(value = "/adminSubChargeChange.do")
	public String adminSubChargeChange(Model model) {
		LOG.debug("┌─────────────────────────┐");
		LOG.debug("│ adminSubChargeChange()  │");
		LOG.debug("└─────────────────────────┘");

		List<AdminVO> resultList1 = adminService.getAllsubscription(); // 구독한 회원정보 전부 가져옴. service호출.
		model.addAttribute("subscriptionlist", resultList1);

		return "admin/adminSubChargeChange";
	}
	
	//구독한 회원정보 조회
    @RequestMapping(value = "/getSubscriptionDetails.do", method = RequestMethod.POST)
	@ResponseBody
	public String getSubscriptionDetails(String memberGradeName) {
    	LOG.debug("┌─────────────────────────────┐");
    	LOG.debug("│   getSubscriptionDetails()  │ memberGradeName: " + memberGradeName);
    	LOG.debug("└─────────────────────────────┘");
    	

	    AdminVO adminInfo = new AdminVO();
	    adminInfo.setMemberGradeName(memberGradeName);
	    try {
	    	adminInfo = adminService.getSubscription(adminInfo);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	    
	    return new Gson().toJson(adminInfo);
	}

     
    
    // 구독가격 수정
    @RequestMapping(value = "/updateSubscription.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String updateSubscription(AdminVO admin) throws SQLException {
    	LOG.debug("┌─────────────────────────────┐");
    	LOG.debug("│   updateSubscription()      │ subscriptionPrice: " + admin.getSubscriptionPrice());
    	LOG.debug("└─────────────────────────────┘");

        int result = adminService.updateSubscription(admin);

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