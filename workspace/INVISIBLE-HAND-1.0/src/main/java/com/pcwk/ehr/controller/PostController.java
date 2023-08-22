package com.pcwk.ehr.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pcwk.ehr.VO.CmnCodeVO;
import com.pcwk.ehr.VO.CommentVO;
import com.pcwk.ehr.VO.LikesVO;
import com.pcwk.ehr.VO.MemberVO;
import com.pcwk.ehr.VO.PostVO;
import com.pcwk.ehr.cmn.PcwkLoger;
import com.pcwk.ehr.cmn.StringUtil;
import com.pcwk.ehr.service.CmnCodeService;
import com.pcwk.ehr.service.CommentService;
import com.pcwk.ehr.service.LikesService;
import com.pcwk.ehr.service.PostService;

@Controller("postController")
@RequestMapping(value = "post")	//WEB_INF아래 폴더이름을 적는곳.
public class PostController implements PcwkLoger{
	
	@Autowired
	PostService postService;
	
	@Autowired
	CmnCodeService cmnCodeService;
	
	@Autowired
	CommentService commentService;
	
	@Autowired
	LikesService likesService;
	
	public PostController() {}
	
	@RequestMapping(value = "/doSave.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody // 비동기 처리를 하는 경우, HTTP 요청 부분의 body 부분이 그대로 브라우저에 전달됨
	public String doSave(PostVO inVO) throws SQLException{
		String jsonString = "";

		LOG.debug("┌────────────────────────────────┐");
		LOG.debug("│post : " + inVO);

		int flag = this.postService.doSave(inVO);

		String message = "";

		if (1 == flag) {
			message = "게시글이 등록되었습니다.";
		} else { 
			message = "게시글 등록을 실패했습니다.";
		}

		jsonString = StringUtil.validMessageToJson(flag + "", message);
		LOG.debug("│jsonString                          │" + jsonString);
		return jsonString;
		
	}
	
	@RequestMapping(value = "/doDelete.do", method = RequestMethod.GET
			, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String doDelete(PostVO inVO) throws SQLException {
		String jsonString = "";

		LOG.debug("┌────────────────────────────────┐");
		LOG.debug("│post : " + inVO);
		LOG.debug("│postnumber : " + inVO.getPostNumber());

		int flag = this.postService.doDelete(inVO);
		LOG.debug("│flag : " + flag);
		String message = "";

		if (-1 == flag) {
			message = "게시글이 삭제되었습니다.";
		} else {
			message = "게시글 삭제를 실패했습니다.";
		}

		jsonString = StringUtil.validMessageToJson(flag + "", message);
		LOG.debug("│jsonString                      │" + jsonString);
		LOG.debug("└────────────────────────────────┘");

		return jsonString;
	}
	
	@RequestMapping(value = "/doUpdate.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String doUpdate(PostVO inVO) throws SQLException {
		String jsonString = "";
		
		LOG.debug("┌────────────────────────────────┐");
		LOG.debug("│post : " + inVO);

		int flag = this.postService.doUpdate(inVO);
		
		String message = "";

		if (1 == flag) {
			message = "'"+inVO.getTitle()+"' 수정 되었습니다.";
			
			
		} else {
			message = "게시글 수정을 실패했습니다.";
		}
		
		jsonString = StringUtil.validMessageToJson(flag+"", message);
		LOG.debug("│jsonString                          │" + jsonString);		
		return jsonString;
	}
	
	//게시물 단건조회
	@RequestMapping("/doSelectOne.do")
	public String doSelectOne(CommentVO commentVO,PostVO inVO,Model model, HttpServletRequest request ,HttpSession httpSession) throws SQLException {
		
		HttpSession session = request.getSession();
		MemberVO memberInfo = (MemberVO) session.getAttribute("member");
		
		PostVO outVO = postService.doSelectOne(inVO);
		
		model.addAttribute("outVO",outVO);
		model.addAttribute("inVO",inVO);
		
		postService.doUpdateViews(outVO);
		
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   doSelectOne()       │");
		LOG.debug("│   outVO()             │"+outVO);
		LOG.debug("└───────────────────────┘");
		
		LikesVO postLikesVO = new LikesVO();
		postLikesVO.setLikesType(10);//10게시판
		postLikesVO.setTypeNumber(outVO.getPostNumber());
		//postLikesVO.setNickname(memberInfo.getNickName());
		int postLikesCnt = likesService.doLikesCount(postLikesVO);
		
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   postLikesVO()       │"+postLikesVO);
		LOG.debug("│   postLikesCnt:       │"+postLikesCnt);
		LOG.debug("└───────────────────────┘");
		
		model.addAttribute("postLikesVO", postLikesVO);
		model.addAttribute("postLikesCnt", postLikesCnt);
		
		// page번호 초기값 1
		if (null != commentVO && commentVO.getPageNo() == 0) {
			commentVO.setPageNo(1);
		}
			
		// pageSize 초기값 10
		if (null != commentVO && commentVO.getPageSize() == 0) {
			commentVO.setPageSize(10);
		}
		
		List<CommentVO> list = this.commentService.doRetrieve(commentVO);
		model.addAttribute("list", list);
		model.addAttribute("commentVO", commentVO);
		
		//총글수
		int totalCnt = 0;
		if(null !=list && list.size() >0 ) {
			totalCnt = list.get(0).getTotalCnt();
			LOG.debug("totalCnt:" + totalCnt);
		}
				
		model.addAttribute("totalCnt", totalCnt);
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   list()     		   │"+list);
		LOG.debug("│   commentVO()         │"+commentVO);
		LOG.debug("│   totalCnt:           │"+totalCnt);
		LOG.debug("└───────────────────────┘");
		
		
		return "post/postContents";
	}

	
	@RequestMapping(value = "/postList.do")
	public String postList(PostVO inVO, Model model, HttpServletRequest request) throws SQLException {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   postList()          │");
		LOG.debug("└───────────────────────┘");
		
		HttpSession session = request.getSession();
		MemberVO memberInfo = (MemberVO) session.getAttribute("member");
		
		if (memberInfo != null) {
	        String memberId = memberInfo.getMemberId();
	        String sessionNickname = memberInfo.getNickName();
	        
	        model.addAttribute("memberId", memberId);
	        model.addAttribute("sessionNickname", sessionNickname);
	        
	        request.setAttribute("memberId", memberId);
	        request.setAttribute("sessionNickname", sessionNickname);
	        
	        LOG.debug("┌───────────────────────┐");
		    LOG.debug("│   memberId:           │"+memberId);
		 	LOG.debug("│   nickname:           │"+sessionNickname);
		 	LOG.debug("└───────────────────────┘");
	    }else {
	    	request.setAttribute("memberId", "");
	        request.setAttribute("sessionNickname", "");
	        
	    }
	    
		
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
		
		// 코드조회: 검색코드
		CmnCodeVO cmnCodeVO = new CmnCodeVO();
		cmnCodeVO.setMasterCode("POSTSEARCH");
		List<CmnCodeVO> searchList = cmnCodeService.doSearch(cmnCodeVO);
		model.addAttribute("searchList", searchList);
		
		LOG.debug("┌───────────────────────┐");
	    LOG.debug("│   searchList:         │"+searchList);
	 	LOG.debug("└───────────────────────┘");
		
		List<PostVO> list = this.postService.doRetrieve(inVO);
		model.addAttribute("list", list);
		
		
		LOG.debug("┌───────────────────────┐");
	    LOG.debug("│   list:               │"+list);
	 	LOG.debug("└───────────────────────┘");
		//총글수
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
		
		return "post/postList";
	}
	
	
	
	@RequestMapping(value="/doMoveToPostReg.do")
	public String doMoveToPostReg(PostVO inVO, Model model) throws SQLException{
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│doMoveToPostReg               │");
		LOG.debug("│inVO                          │" + inVO);
		LOG.debug("└──────────────────────────────┘");
		model.addAttribute("inVO", inVO);
		
		return "post/postReg";
	}
	
	
	@RequestMapping(value = "/postContents.do")
	public String postContents(Model model) throws SQLException {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   postContents()      │");
		LOG.debug("└───────────────────────┘");
		
		return "post/postContents";
	}

	@RequestMapping(value = "/postReg.do")
	public String postReg() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   postReg()           │");
		LOG.debug("└───────────────────────┘");
		
		return "post/postReg";
	}
	
	
	 @RequestMapping(value = "/postMod.do", method = RequestMethod.GET) 
	 public String postMod(@ModelAttribute("inVO")PostVO inVO ,@RequestParam("postNumber")int postNumber, Model model) throws SQLException {
		 LOG.debug("┌───────────────────────┐");
		 LOG.debug("│   postMod()           │");
		 LOG.debug("└───────────────────────┘");
		 
		 PostVO outVO = postService.doSelectOne(inVO); 
		 model.addAttribute("outVO",outVO);
	 
	 return "post/postMod"; 
	 }

	@RequestMapping(value = "/doUpdateLikes.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String doUpdateLikes(int postNumber, HttpServletRequest request) throws SQLException {
		String jsonString = "";
		
		LOG.debug("┌────────────────────────────────┐");
		LOG.debug("│postNumber : " + postNumber);
	
		String likes = request.getParameter("likes");
		String nickname = request.getParameter("nickname");
		int flag = this.postService.doUpdateLikes(postNumber, likes, nickname);
		
		LOG.debug("│likes : " + likes);
		LOG.debug("│nickname : " + nickname);
		/*
		 * List<PostVO> list = postService.doRetrieve(inVO); LOG.debug("│inVO : " +
		 * inVO);
		 */
		String message = "";
	
		if (1 == flag) {
			message = "게시물을 추천하셨습니다.";
			
		} else {
			message = "게시글 추천을 실패했습니다.";
		}
		
		jsonString = StringUtil.validMessageToJson(flag+"", message);
		LOG.debug("│jsonString                          │" + jsonString);	
		
		return jsonString;
	}
	
}