package com.pcwk.ehr.controller;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pcwk.ehr.VO.CommentVO;
import com.pcwk.ehr.service.PostService;
import com.pcwk.ehr.service.CommentService;

@Controller
@RequestMapping(value = "comment")
public class CommentController{
	
	final Logger LOG = LogManager.getLogger(getClass());
	
	private com.pcwk.ehr.service.PostService service;
	
	private CommentService commentService;
	
	
	@RequestMapping(value = "/commentList.do")
	public void getList(Model model) {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   commentList()       │");
		LOG.debug("└───────────────────────┘");
		
		List<CommentVO> list = null;
		//list = service.list
		
		//return "post/commentList";
	}

	@RequestMapping(value = "/postContents.do")
	public String postContents() {
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
	
	
}
