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

	@RequestMapping(value = "/doSave.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody // 비동기 처리를 하는 경우, HTTP 요청 부분의 body 부분이 그대로 브라우저에 전달됨
	public String doSave(PostVO inVO) throws SQLException {
		String jsonString = "";

		lg.debug("┌────────────────────────────────┐");
		lg.debug("│post : " + inVO);

		int flag = this.postService.doSave(inVO);

		String message = "";

		if (1 == flag) {
			message = "게시글이 등록되었습니다.";
		} else {
			message = "게시글 등록을 실패했습니다.";
		}

		jsonString = StringUtil.validMessageToJson(flag + "", message);
		lg.debug("│jsonString                          │" + jsonString);
		return jsonString;

	}

	@RequestMapping(value = "/doDelete.do", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String doDelete(PostVO inVO) throws SQLException {
		String jsonString = "";

		lg.debug("┌────────────────────────────────┐");
		lg.debug("│post : " + inVO);
		lg.debug("│postnumber : " + inVO.getPostNumber());

		int flag = this.postService.doDelete(inVO);

		String message = "";

		if (1 == flag) {
			message = "게시글이 삭제되었습니다.";
		} else {
			message = "게시글 삭제를 실패했습니다.";
		}

		jsonString = StringUtil.validMessageToJson(flag + "", message);
		lg.debug("│jsonString                          │" + jsonString);

		lg.debug("│jsonString : " + jsonString);
		lg.debug("└────────────────────────────────┘");

		return jsonString;
	}

	@RequestMapping(value = "/doUpdate.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String doUpdate(PostVO inVO) throws SQLException {
		String jsonString = "";

		lg.debug("┌────────────────────────────────┐");
		lg.debug("│post : " + inVO);

		int flag = this.postService.doUpdate(inVO);

		String message = "";

		if (1 == flag) {
			message = "게시글이 수정되었습니다.";
		} else {
			message = "게시글 수정을 실패했습니다.";
		}

		jsonString = StringUtil.validMessageToJson(flag + "", message);
		lg.debug("│jsonString                          │" + jsonString);
		return jsonString;
	}

	@RequestMapping("/doSelectOne.do")
	public String doSelectOne(PostVO inVO, Model model, HttpSession httpSession) throws SQLException {

		PostVO outVO = postService.doSelectOne(inVO);

		model.addAttribute("outVO", outVO);
		model.addAttribute("inVO", inVO);

		postService.doUpdateViews(outVO);

		lg.debug("┌───────────────────────┐");
		lg.debug("│   doSelectOne()       │");
		lg.debug("│   outVO()             │" + outVO);
		lg.debug("└───────────────────────┘");
		return "admin/adminPost";
	}

	// 게시판

	@RequestMapping(value = "/adminPost.do")
	public String adminPost(PostVO inVO, Model model, HttpSession httpSession) throws SQLException {
		lg.debug("┌──────────────────────────────┐");
		lg.debug("│ adminPost()  				 │");
		lg.debug("└──────────────────────────────┘");

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

		// searchDiv
		if (null != inVO && null == inVO.getSearchDiv()) {
			inVO.setSearchDiv("");
		}

		lg.debug("inVO:" + inVO);

		// 코드조회: 검색코드
		CmnCodeVO cmnCodeVO = new CmnCodeVO();
		cmnCodeVO.setMasterCode("POST_SEARCH");
		List<CmnCodeVO> searchList = cmnCodeService.doSearch(cmnCodeVO);
		model.addAttribute("searchList", searchList);
		

		/*
		 * // 코드조회: 페이지 사이즈 cmnCodeVO.setMasterCode("CMN_PAGE_SIZE"); List<CmnCodeVO>
		 * pageSizeList = cmnCodeService.doSearch(cmnCodeVO);
		 * model.addAttribute("pageSizeList", pageSizeList);
		 */


		List<PostVO> list = postService.doRetrieve(inVO);
		model.addAttribute("list", list);
		model.addAttribute("inVO", inVO);

		// 총글수
		int totalCnt = 0;
		if (null != list && list.size() > 0) {
			totalCnt = list.get(0).getTotalCnt();
			lg.debug("totalCnt:" + totalCnt);
		}

		model.addAttribute("totalCnt", totalCnt);
		

		return "admin/adminPost";
	}

}