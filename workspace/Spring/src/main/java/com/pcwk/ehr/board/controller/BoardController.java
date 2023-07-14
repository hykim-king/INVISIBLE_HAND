package com.pcwk.ehr.board.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.pcwk.ehr.board.domain.BoardVO;
import com.pcwk.ehr.board.service.BoardService;
import com.pcwk.ehr.cmn.DTO;
import com.pcwk.ehr.cmn.MessageVO;
import com.pcwk.ehr.cmn.PcwkLoger;
import com.pcwk.ehr.cmn.StringUtil;
import com.pcwk.ehr.code.domain.CodeVO;
import com.pcwk.ehr.code.service.CodeService;
import com.pcwk.ehr.user.domain.UserVO;

@Controller("boardController")
@RequestMapping("board")
public class BoardController implements PcwkLoger {
	@Autowired
	BoardService boardService;
	
	@Autowired
	CodeService codeService;
	
	public BoardController() {}  
	
	
	@RequestMapping(value = "/doDelete.do", method = RequestMethod.GET
			,produces = "application/json;charset=UTF-8"
			)
	@ResponseBody 
	public String doDelete(BoardVO inVO, HttpServletRequest req) throws SQLException{
		String jsonString = "";
		
		int flag=this.boardService.doDelete(inVO);
		
		String message = "";
		if(1==flag) {
			message = inVO.getSeq()+"가 삭제 되었습니다.";
		}else {
			message = inVO.getSeq()+" 삭제 실패";
		}
		
		jsonString = StringUtil.vaildMessageToJason(flag+"", message);

		return jsonString;
	}
	
	@RequestMapping("/doSelectOne.do")
	public String doSelectOne(BoardVO inVO,Model model,HttpSession httpSession)throws SQLException{
		String view = "board/board_mng";
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│doSelectOne                   │");
		LOG.debug("│inVO                          │"+inVO);
		LOG.debug("└──────────────────────────────┘");	
		
		//등록자 아이디를 세션에서 추출
		
		UserVO userVO=(UserVO)httpSession.getAttribute("user");
		
		inVO.setModId(userVO.getUserId());
		
		BoardVO outVO = boardService.doSelectOne(inVO);
		model.addAttribute("outVO",outVO);
		model.addAttribute("inVO",inVO);
		return view;
	}
	
	@RequestMapping(value="/doSave.do",method = RequestMethod.POST
			,produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String doSave(BoardVO inVO)throws SQLException{
		String jsonString = "";
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│doSave                        │");
		LOG.debug("│inVO                          │"+inVO);
		LOG.debug("└──────────────────────────────┘");	
		
		if(null !=inVO && inVO.getTitle()==null) {
		 	return StringUtil.vaildMessageToJason("10", "제목을 입력하세요");
		}
		if(null !=inVO && inVO.getTitle()==null) {
			return StringUtil.vaildMessageToJason("20", "등록ID를 입력하세요");
		}
		if(null !=inVO && inVO.getTitle()==null) {
			return StringUtil.vaildMessageToJason("30", "내용을 입력하세요");
		}
		
		int flag = this.boardService.doSave(inVO);
		
		String message="";
		if(1==flag) {//등록 성공
			message=inVO.getTitle()+"등록성공";
		}else {//등록실패
			message=inVO.getTitle()+"등록실패";
			
		}
		jsonString = StringUtil.vaildMessageToJason(flag+"", message);
		return jsonString;
		
	}
	
	//${CP}/board/doMoveToReg.do
	//http://localhost:8080/ehr/board/doMoveToReg.do?div=10
	//http://localhost:8080/ehr/board/doMoveToReg.do?pageNo=1&div=10&searchDiv=20&searchWord=%EB%82%B4&pageSize=20
	@RequestMapping("/doMoveToReg.do")
	public String doMoveToReg(BoardVO inVO, Model model)throws SQLException{
		String view = "board/board_reg";
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│doMoveToReg                   │");
		LOG.debug("│inVO                          │"+inVO);
		LOG.debug("└──────────────────────────────┘");	
		
		
		model.addAttribute("inVO", inVO);
		return view;
	}
	
	@RequestMapping("/boardView.do")
	public String boardView(BoardVO inVO, Model model)throws SQLException{
		String viewPage = "board/board_list";
		
		//page번호
		if(null !=inVO && inVO.getPageNo()==0) {
			inVO.setPageNo(1);
		}
		
		//pageSize
		if(null !=inVO && inVO.getPageSize()==0) {
			inVO.setPageSize(10);
		}		
		
		//searchWord
		if(null !=inVO && null == inVO.getSearchWord()) {
			inVO.setSearchWord("");
		}
		
		//searchDiv
		if(null !=inVO && null == inVO.getSearchDiv()) {
			inVO.setSearchDiv("");
		}
		
		//
		LOG.debug("inVO:"+inVO);
		
		//코드조회: 검색코드
		CodeVO  codeVO=new CodeVO(); 
		codeVO.setCodeId("BOARD_SEARCH");
		List<CodeVO> searchList =codeService.doRetrieve(codeVO);
		model.addAttribute("searchList", searchList);
		
		//코드조회: 페이지 사이즈
		codeVO.setCodeId("CMN_PAGE_SIZE");
		List<CodeVO> pageSizeList =codeService.doRetrieve(codeVO);
		model.addAttribute("pageSizeList", pageSizeList);		
		
		
		List<BoardVO> list = this.boardService.doRetrieve(inVO);
		model.addAttribute("list", list);
		model.addAttribute("inVO", inVO);
		return viewPage;
	}
	
}
