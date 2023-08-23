package com.pcwk.ehr.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pcwk.ehr.VO.CommentVO;
import com.pcwk.ehr.VO.PostVO;
import com.pcwk.ehr.cmn.PcwkLoger;
import com.pcwk.ehr.cmn.StringUtil;
import com.pcwk.ehr.service.CommentService;

@Controller
@RequestMapping(value = "comment")
public class CommentController implements PcwkLoger{
	
	@Autowired
	CommentService commentService;
	
	//댓글 조회
	@RequestMapping(value = "/commentList.do") 
	public String
	commentList(CommentVO commentVO,Model model, HttpServletRequest request)throws SQLException { 
	LOG.debug("┌───────────────────────┐");
	LOG.debug("│   commentList()       │");
	LOG.debug("└───────────────────────┘");
	
	
	// page번호 초기값 1 
	if (null != commentVO && commentVO.getPageNo() == 0) {
				commentVO.setPageNo(1); }
	
	// pageSize 초기값 10 
	if (null != commentVO && commentVO.getPageSize() == 0) {
			commentVO.setPageSize(10); } 
	
	//댓글 조회 
	List<CommentVO> list = this.commentService.doRetrieve(commentVO);
	LOG.debug("┌───────────────────────┐");
	LOG.debug("│   list()     		   │"+list); model.addAttribute("list",list);
	
	//총글수 
	int totalCnt = 0; 
	if(null !=list && list.size() >0 ) { 
			totalCnt = list.get(0).getTotalCnt(); LOG.debug("totalCnt:" + totalCnt); 
	}
	model.addAttribute("totalCnt", totalCnt); model.addAttribute("commentVO",commentVO);
	
	LOG.debug("│   commentVO()         │"+commentVO);
	LOG.debug("└───────────────────────┘");
	
	return "post/postContents"; }
	
	//댓글 등록
	@RequestMapping(value = "/doSave.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String doSave(CommentVO commentVO) throws SQLException {
		String jsonString = "";

		LOG.debug("┌────────────────────────────────┐");
		LOG.debug("│comment : " + commentVO);

		int flag = this.commentService.doSave(commentVO);

		String message = "";

		if (1 == flag) {
			message = "댓글이 등록되었습니다.";
		} else { 
			message = "댓글 등록을 실패했습니다.";
		}

		jsonString = StringUtil.validMessageToJson(flag + "", message);
		LOG.debug("│jsonString                          │" + jsonString);
		
		return jsonString;
		
	}
	
	@RequestMapping(value = "/doUpdate.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String doUpdate(int commentNumber, String content) throws SQLException {
		String jsonString = "";
		
		LOG.debug("┌────────────────────────────────┐");
		LOG.debug("│commentNumber : " + commentNumber);
		LOG.debug("│content : " + content);

		int flag = this.commentService.doUpdate(commentNumber, content);
		
		String message = "";

		if (1 == flag) {
			message = "댓글이 수정 되었습니다.";
		} else {
			message = "댓글 수정을 실패했습니다.";
		}
		
		jsonString = StringUtil.validMessageToJson(flag+"", message);
		LOG.debug("│jsonString                          │" + jsonString);		
		return jsonString;
	}
	
	@RequestMapping(value = "/doDelete.do", method = RequestMethod.GET
			, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String doDelete(int commentNumber) throws SQLException {
		String jsonString = "";

		LOG.debug("┌────────────────────────────────┐");
		LOG.debug("│commentNumber : " + commentNumber);

		int flag = this.commentService.doDelete(commentNumber);
		
		String message = "";

		if (1 == flag) {
			message = "댓글이 삭제되었습니다.";
		} else {
			message = "댓글 삭제를 실패했습니다.";
		}

		jsonString = StringUtil.validMessageToJson(flag + "", message);
		LOG.debug("│jsonString                          │" + jsonString);

		LOG.debug("│jsonString : " + jsonString);
		LOG.debug("└────────────────────────────────┘");

		return jsonString;
	}
	
	@RequestMapping(value = "/doUpdateLikes.do", method=RequestMethod.POST
			, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String doUpdateLikes(@RequestParam int commentNumber, HttpServletRequest request) throws SQLException {
		String jsonString = "";
		
		LOG.debug("┌────────────────────────────────┐");
		LOG.debug("│commentNumber : " + commentNumber);
		
		String likes = request.getParameter("likes");
		int flag = this.commentService.doUpdateLikes(commentNumber, likes);
		
		String message = "";
	
		if (1 == flag) {
			message = "댓글을 추천하셨습니다.";
			
		} else {
			message = "댓글 추천을 실패했습니다.";
		}
		
		jsonString = StringUtil.validMessageToJson(flag+"", message);
		LOG.debug("│jsonString                          │" + jsonString);	
		
		return jsonString;
	}
	
	@RequestMapping(value = "/doCommentCnt.do")
	public String doCommentCnt(int postNumber, Model model) throws SQLException {
	    LOG.debug("┌───────────────────────┐");
	    LOG.debug("│   doCommentCnt()      │");

	    int commentCnt = this.commentService.doCommentCnt(postNumber);
	    model.addAttribute("commentCnt", commentCnt);
	    
	    LOG.debug("│   commentCnt          │" + commentCnt);
	    LOG.debug("└───────────────────────┘");
	    return "post/postContents";
	}

}
