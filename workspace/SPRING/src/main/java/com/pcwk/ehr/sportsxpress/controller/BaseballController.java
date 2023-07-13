package com.pcwk.ehr.sportsxpress.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pcwk.ehr.sportsxpress.VO.ArticleVO;
import com.pcwk.ehr.sportsxpress.VO.BaseballMatchVO;
import com.pcwk.ehr.sportsxpress.VO.BaseballRecordVO;
import com.pcwk.ehr.sportsxpress.VO.TajaInfoVO;
import com.pcwk.ehr.sportsxpress.VO.TeamVO;
import com.pcwk.ehr.sportsxpress.VO.TusuInfoVO;
import com.pcwk.ehr.sportsxpress.VO.VideoVO;
import com.pcwk.ehr.sportsxpress.service.ArticleService;
import com.pcwk.ehr.sportsxpress.service.BaseballService;
import com.pcwk.ehr.sportsxpress.service.TajaService;
import com.pcwk.ehr.sportsxpress.service.TeamService;
import com.pcwk.ehr.sportsxpress.service.TusuService;
import com.pcwk.ehr.sportsxpress.service.VideoService;


@RequestMapping(value = "/sportsxpress")
@Controller // controller bean 등록
public class BaseballController {

	@Autowired
	BaseballService baseballService;

	@Autowired
	TusuService tusuInfoService;

	@Autowired
	TajaService tajaInfoService;
	
	@Autowired
	VideoService videoService;

	@Autowired
	TeamService teamService;

	@Autowired
	ArticleService articleService;

	public BaseballController() {
		System.out.println("default SportsController()");
	}


	// 한국 야구 (최신 뉴스, 영상 등 한 화면에 필요한 DATA를 부르는 Controller 제작)
	// -------------------------------------------------------------------------//
	// 최신 뉴스
	@RequestMapping(value = "/baseball_news.do", method = RequestMethod.GET)
	public String ArticleInfo(ArticleVO getArticle, VideoVO getVideo, Model model) throws SQLException {
		
		getArticle.setSports_nm("야구");
		getVideo.setSports_nm("야구");
		
		List<ArticleVO> articleList = articleService.getArticleInfo(getArticle);
		List<VideoVO> videoList = videoService.getVideoInfo(getVideo);
		
		model.addAttribute("videos",videoList);
		model.addAttribute("articles", articleList);

		return "sports/baseball/baseball_news";

	}
	
	@RequestMapping(value = "/baseball_record.do", method = RequestMethod.GET)
	public String baseballRecordInfo(BaseballRecordVO getRecord, Model model) throws SQLException {
		
		//야구 매칭 기록을 서비스를 통해 가져옴
		List<BaseballRecordVO> recordList = baseballService.getBaseballRecordInfo(getRecord);
	    List<TusuInfoVO> tusuList = tusuInfoService.getTusuInfo(new TusuInfoVO());
	    List<TajaInfoVO> tajaList = tajaInfoService.getTajaInfo(new TajaInfoVO());
	    
	    model.addAttribute("records", recordList);
	    model.addAttribute("tusus", tusuList);
	    model.addAttribute("tajas", tajaList);
	    return "sports/baseball/baseball_record";
	}
	
	// 일정 결과
	@RequestMapping(value = "/baseball_schedule.do", method = RequestMethod.GET)
	public String ScheduleInfo(BaseballMatchVO getMatch, TeamVO getTeam, Model model) throws SQLException {
		List<BaseballMatchVO> matchList = baseballService.getMatchInfo(getMatch);
		model.addAttribute("matches", matchList);
		getTeam.setLname("KBO");
		List<TeamVO> teamList = teamService.getTeamInfo(getTeam);
		model.addAttribute("teams", teamList);

		return "sports/baseball/baseball_schedule";
	}
	

}