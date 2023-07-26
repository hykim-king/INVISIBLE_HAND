package com.pcwk.ehr.hand.controller;

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

@Controller
@RequestMapping(value = "admin") // WEB_INF아래 폴더이름을 적는곳.
public class AdminController {
	final Logger lg = LogManager.getLogger(getClass());
	
	@Autowired
	BoardService boardService;
	
	// 게시글 삭제
	@RequestMapping(value = "/doDelete.do", method = RequestMethod.GET
					, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String doDelete(BoardVO inVO) throws SQLException {
		String jsonString = "";
		lg.debug("┌──────────┐");
		lg.debug("│ doDelete │");
		lg.debug("│ inVO     │" + inVO);
		lg.debug("└──────────┘");

		int flag = boardService.doDelete(inVO);

		String message = "";
		if (flag == 1) { // 삭제 성공
			message = inVO.getPostnumber() + " 삭제되었습니다.";
		} else { // 삭제 실패
			message = inVO.getPostnumber() + " 삭제 실패되었습니다.";
		}

		jsonString = StringUtil.validMessageToJson(flag + "", message);
		lg.debug("*****jsonString*****" + jsonString);

		return jsonString;
	}
	
	// 게시글 등록
	@RequestMapping(value = "/doSave.do", method = RequestMethod.POST
					, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String doSave(BoardVO inVO) throws SQLException {
		String jsonString = "";
		lg.debug("┌────────┐");
		lg.debug("│ doSave │");
		lg.debug("│ inVO   │" + inVO);
		lg.debug("└────────┘");

		// 제목:10
		if (inVO != null && inVO.getTitle().equals("")) {
			return StringUtil.validMessageToJson("10", "제목을 입력해주세요.");
		}

		// 등록자:20
		if (null != inVO && inVO.getAuthor().equals("") && null == inVO.getAuthor()) {
			return StringUtil.validMessageToJson("20", "등록자를 입력해주세요.");
		}

		// 내용:30
		if (null != inVO && inVO.getContent().equals("")) {
			return StringUtil.validMessageToJson("30", "내용을 입력해주세요.");
		}

		// 서비스 호출
		int flag = this.boardService.doSave(inVO);

		String message = "";
		if (1 == flag) {// 등록 성공
			message = inVO.getTitle() + " 등록되었습니다.";
		} else {// 등록실패
			message = inVO.getTitle() + " 등록 실패하였습니다.";
		}

		jsonString = StringUtil.validMessageToJson(flag + "", message);
		lg.debug("*****jsonString*****" + jsonString);
		return jsonString;
	}
	
	// 게시글 조회
	@RequestMapping("/doSelectOne.do")
	public String doSelectOne(BoardVO inVO, Model model, HttpSession httpSession) throws SQLException {
		String view = "admin/admin";
		
		lg.debug("┌─────────────┐");
		lg.debug("│ doSelectOne │");
		lg.debug("│ inVO        │" + inVO);
		lg.debug("└─────────────┘");
		
		BoardVO outVO = boardService.doSelectOne(inVO);
		model.addAttribute("outVO", outVO);
		model.addAttribute("inVO", inVO);

		return view;
	}
	
	@RequestMapping(value = "/admin.do")
	public String admin() {
		lg.debug("┌─────────┐");
		lg.debug("│ admin() │");
		lg.debug("└─────────┘");
		
		return "admin/admin";
	}

}