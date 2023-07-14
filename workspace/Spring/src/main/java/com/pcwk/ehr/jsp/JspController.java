package com.pcwk.ehr.jsp;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.collections.map.HashedMap;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pcwk.ehr.board.domain.BoardVO;
import com.pcwk.ehr.cmn.PcwkLoger;

@Controller
public class JspController implements PcwkLoger {

	public JspController() {
		LOG.debug("---------------------");
		LOG.debug("-JspController()-");
		LOG.debug("---------------------");
	}
	  
	@RequestMapping("chart/pie.do")
	public String pie(HttpServletRequest request) {
		LOG.debug("---------------------");
		LOG.debug("-pie()-");
		LOG.debug("-request.getRemoteAddr():-"+request.getRemoteAddr());
		
		LOG.debug("---------------------");		
		
		return "chart/pie";
	}
	
	@RequestMapping("jsp/jstl/format_date08.do")
	public String format_date08(HttpServletRequest request) {
		LOG.debug("---------------------");
		LOG.debug("-format_date08()-");
		LOG.debug("-request.getRemoteAddr():-"+request.getRemoteAddr());
		
		LOG.debug("---------------------");		
		
		return "jsp/jstl/format_date08";
	}
	
	@RequestMapping("jsp/jstl/format_number07.do")
	public String format_number07(HttpServletRequest request) {
		LOG.debug("---------------------");
		LOG.debug("-format_number07()-");
		LOG.debug("-request.getRemoteAddr():-"+request.getRemoteAddr());
		
		LOG.debug("---------------------");		
		
		return "jsp/jstl/format_number07";
	}
	
	@RequestMapping("jsp/jstl/url06.do")
	public String url06(HttpServletRequest request) {
		LOG.debug("---------------------");
		LOG.debug("-url06()-");
		LOG.debug("-request.getRemoteAddr():-"+request.getRemoteAddr());
		
		LOG.debug("---------------------");		
		
		return "jsp/jstl/url06";
	}
	
	@RequestMapping("jsp/jstl/forTokens05.do")
	public String forTokens05(HttpServletRequest request) {
		LOG.debug("---------------------");
		LOG.debug("-forTokens05()-");
		LOG.debug("-request.getRemoteAddr():-"+request.getRemoteAddr());
		
		LOG.debug("---------------------");		
		
		return "jsp/jstl/forTokens05";
	}
	
	@RequestMapping("jsp/jstl/forEach04.do")
	public String forEach04(HttpServletRequest request, Model model) {
		LOG.debug("---------------------");
		LOG.debug("-forEach04()-");
		LOG.debug("-request.getRemoteAddr():-"+request.getRemoteAddr());
		
		LOG.debug("---------------------");		
		//Map
		Map<String,Object> map=new HashedMap();
		map.put("name", "이상무");
		map.put("today", new java.util.Date());
		
		model.addAttribute("map", map);
		return "jsp/jstl/forEach04";
	}
	
	@RequestMapping("jsp/jstl/choose03.do")
	public String choose03(HttpServletRequest request, Model model) {
		LOG.debug("---------------------");
		LOG.debug("-choose03()-");
		LOG.debug("-request.getRemoteAddr():-"+request.getRemoteAddr());
		BoardVO  board01 = new BoardVO(91, "제목_91", "내용_91", "10", 0, "등록일 사용않함", "admin", "수정일 사용 않함",  "admin");       
		BoardVO  board02 = new BoardVO(92, "제목_92", "내용_92", "10", 0, "등록일 사용않함", "admin", "수정일 사용 않함",  "admin");       
		BoardVO  board03 = new BoardVO(93, "제목_93", "내용_93", "20", 0, "등록일 사용않함", "admin", "수정일 사용 않함",  "admin");       
		BoardVO  board04 = new BoardVO(94, "제목_94", "내용_94", "10", 0, "등록일 사용않함", "admin", "수정일 사용 않함",  "admin");       
		BoardVO  board05 = new BoardVO(95, "제목_95", "내용_95", "10", 0, "등록일 사용않함", "admin", "수정일 사용 않함",  "admin");       	
		List<BoardVO> list =new ArrayList<BoardVO>();
		
		list.add(board01);
		list.add(board02);
		list.add(board03);
		list.add(board04);
		list.add(board05);
		
		model.addAttribute("list", list);
		LOG.debug("---------------------");		
		
		return "jsp/jstl/choose03";
	}
	
	
	@RequestMapping("jsp/jstl/if02.do")
	public String if02(HttpServletRequest request) {
		LOG.debug("---------------------");
		LOG.debug("-if02()-");
		LOG.debug("-request.getRemoteAddr():-"+request.getRemoteAddr());
		
		LOG.debug("---------------------");		
		
		return "jsp/jstl/if02";
	}
	
	@RequestMapping("jsp/jstl/set01.do")
	public String set01(HttpServletRequest request) {
		LOG.debug("---------------------");
		LOG.debug("-set01()-");
		LOG.debug("-request.getRemoteAddr():-"+request.getRemoteAddr());
		
		LOG.debug("---------------------");		
		
		return "jsp/jstl/set01";
	}
	
	@RequestMapping("jsp/el/el02.do")
	public String el02(HttpServletRequest request) {
		LOG.debug("---------------------");
		LOG.debug("-el02()-");
		LOG.debug("-request.getRemoteAddr():-"+request.getRemoteAddr());
		
		LOG.debug("---------------------");		
		
		return "jsp/el/el02";
	}
	
	@RequestMapping("jsp/el/el01.do")
	public String el01(HttpServletRequest request) {
		LOG.debug("---------------------");
		LOG.debug("-el01()-");
		LOG.debug("-request.getRemoteAddr():-"+request.getRemoteAddr());
		
		LOG.debug("---------------------");		
		
		return "jsp/el/el01";
	}
	
	
	@RequestMapping("jsp/cookie_read13.do")
	public String cookie_read13(HttpServletRequest request) {
		LOG.debug("---------------------");
		LOG.debug("-cookie_read13()-");
		LOG.debug("-request.getRemoteAddr():-"+request.getRemoteAddr());
		
		LOG.debug("---------------------");		
		
		return "jsp/cookie_read13";
	}
	
	@RequestMapping("jsp/cookie_add13.do")
	public String cookie_add13(HttpServletRequest request) {
		LOG.debug("---------------------");
		LOG.debug("-cookie_add13()-");
		LOG.debug("-request.getRemoteAddr():-"+request.getRemoteAddr());
		
		LOG.debug("---------------------");		
		
		return "jsp/cookie_add13";
	}
	
	@RequestMapping("jsp/application12.do")
	public String application12(HttpServletRequest request) {
		LOG.debug("---------------------");
		LOG.debug("-application12()-");
		LOG.debug("-request.getRemoteAddr():-"+request.getRemoteAddr());
		
		LOG.debug("---------------------");		
		
		return "jsp/application12";
	}
	
	
	@RequestMapping("jsp/out10.do")
	public String out10(HttpServletRequest request) {
		LOG.debug("---------------------");
		LOG.debug("-out10()-");
		LOG.debug("-request.getRemoteAddr():-"+request.getRemoteAddr());
		
		LOG.debug("---------------------");		
		
		return "jsp/out10";
	}
	
	
	@RequestMapping(value = "jsp/request_form10_post.do",method = RequestMethod.POST)
	public String request_form10_post(HttpServletRequest request) {
		LOG.debug("---------------------");
		LOG.debug("-request_form10_post()-");
		LOG.debug("-request.getRemoteAddr():-"+request.getRemoteAddr());
		String userName = request.getParameter("username");
		//1건만 처리 한다.
		//String favorite = request.getParameter("favorite");
		String[] favorites = request.getParameterValues("favorite");
		
		for(int i=0;i<favorites.length;i++ ) {
			LOG.debug("-favorites[i]-"+favorites[i]);
		}
		
		
		//getParameterNames()
		Enumeration<String> paramName = request.getParameterNames();
		while(paramName.hasMoreElements()) {
			String param = paramName.nextElement();
			LOG.debug("-paramName-"+param+","+request.getParameter(param));
		}
		  
		
		LOG.debug("-userName-"+userName);
		
		LOG.debug("---------------------");		   
		
		return "jsp/request_form10";
	}
	
	@RequestMapping("jsp/request_form10.do")
	public String request_form10(HttpServletRequest request) {
		LOG.debug("---------------------");
		LOG.debug("-request_form10()-");
		LOG.debug("-request.getRemoteAddr():-"+request.getRemoteAddr());
		
		LOG.debug("---------------------");		
		
		return "jsp/request_form10";
	}
	
	
	@RequestMapping("jsp/request_form09.do")
	public String request_form09(HttpServletRequest request) {
		LOG.debug("---------------------");
		LOG.debug("-request_form09()-");
		LOG.debug("-request.getRemoteAddr():-"+request.getRemoteAddr());
		
		LOG.debug("---------------------");		
		
		return "jsp/request_form09";
	}
	
	@RequestMapping("jsp/include_test08.do")
	public String include_test08() {
		LOG.debug("---------------------");
		LOG.debug("-include_test08()-");
		LOG.debug("---------------------");		
		
		return "jsp/include_test08";
	}
	
	@RequestMapping("jsp/scriptlet07.do")
	public String scriptlet() {
		LOG.debug("---------------------");
		LOG.debug("-scriptlet07()-");
		LOG.debug("---------------------");		
		
		return "jsp/scriptlet07";
	}
	
	@RequestMapping("jsp/import06.do")
	public String import06() {
		LOG.debug("---------------------");
		LOG.debug("-content05()-");
		LOG.debug("---------------------");		
		
		return "jsp/import06";
	}
	
	@RequestMapping("jsp/content05.do")
	public String content05() {
		LOG.debug("---------------------");
		LOG.debug("-content05()-");
		LOG.debug("---------------------");		
		
		return "jsp/content05";
	}
	
	@RequestMapping("jsp/time04.do")
	public String time04() {
		LOG.debug("---------------------");
		LOG.debug("-error_test03()-");
		LOG.debug("---------------------");		
		
		return "jsp/time04";
	}
	
	
	@RequestMapping("jsp/error_test03.do")
	public String error_test03() {
		LOG.debug("---------------------");
		LOG.debug("-error_test03()-");
		LOG.debug("---------------------");		
		
		return "jsp/error_test03";
	}
	
	@RequestMapping("jsp/helloWorld.do")
	public String helloWorld() {
		LOG.debug("---------------------");
		LOG.debug("-helloWorld()-");
		LOG.debug("---------------------");		
		
		return "jsp/HelloWorld";
	}
	
	@RequestMapping("jsp/comment.do")
	public String comment() {
		LOG.debug("---------------------");
		LOG.debug("-comment()-");
		LOG.debug("---------------------");		
		
		return "jsp/comment";
	}	
}
