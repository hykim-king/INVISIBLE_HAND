package com.pcwk.ehr.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pcwk.ehr.VO.LikesVO;
import com.pcwk.ehr.cmn.PcwkLoger;
import com.pcwk.ehr.cmn.StringUtil;
import com.pcwk.ehr.dao.LikesDAO;
import com.pcwk.ehr.service.LikesService;

@Controller("likesController")
@RequestMapping(value = "likes")
public class LikesController implements PcwkLoger {
	
	@Autowired
	LikesDAO dao;
	
	@Autowired
	LikesService likesService;
	
	public LikesController() {}
	
	
	@RequestMapping(value = "/doCheckLike.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String doCheckLike(LikesVO likesVO) throws SQLException {
		String jsonString="";
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   doCheckLike()       │");
		
		int flag = this.likesService.doCheckLike(likesVO);
		
		LOG.debug("│   flag                │"+flag);
		LOG.debug("└───────────────────────┘");
		String message = "";
		  if (flag == 1) {
		        dao.deleteLike(likesVO);
		        message="추천이 취소되었습니다.";
		    } else {
		        dao.insertLike(likesVO);
		        message="추천되었습니다.";
		    }
		  jsonString = StringUtil.validMessageToJson(flag+"", message);
		  LOG.debug("│jsonString                          │" + jsonString);		
		  return jsonString;
	}
	
	@RequestMapping(value = "/insertLike.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public int insertLike(LikesVO likesVO, HttpServletRequest request) throws SQLException {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   insertLike()       │");
		LOG.debug("└───────────────────────┘");	

		return likesService.insertLike(likesVO);
	}
	
	@RequestMapping(value = "/deleteLike.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public int deleteLike(LikesVO likesVO) throws SQLException {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   deleteLike()       │");
		LOG.debug("└───────────────────────┘");	

		return likesService.deleteLike(likesVO);
	}
	
	
	@RequestMapping(value = "/doLikesCount.do")
	public String doLikesCount(LikesVO likesVO, Model model) throws SQLException {
	    LOG.debug("┌───────────────────────┐");
	    LOG.debug("│   doCommentCnt()      │");

	    int likesCnt = this.likesService.doLikesCount(likesVO);
	    model.addAttribute("likesCnt", likesCnt);
	    
	    LOG.debug("│   likesCnt            │" + likesCnt);
	    LOG.debug("└───────────────────────┘");
	    return "post/postContents";
	}
}
