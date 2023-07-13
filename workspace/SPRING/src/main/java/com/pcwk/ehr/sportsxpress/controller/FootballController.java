package com.pcwk.ehr.sportsxpress.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pcwk.ehr.sportsxpress.VO.ArticleVO;
import com.pcwk.ehr.sportsxpress.VO.FootballMatchVO;
import com.pcwk.ehr.sportsxpress.VO.FootballRecordVO;
import com.pcwk.ehr.sportsxpress.VO.TeamVO;
import com.pcwk.ehr.sportsxpress.VO.VideoVO;
import com.pcwk.ehr.sportsxpress.service.ArticleService;
import com.pcwk.ehr.sportsxpress.service.FootballService;
import com.pcwk.ehr.sportsxpress.service.TeamService;
import com.pcwk.ehr.sportsxpress.service.VideoService;

@RequestMapping(value = "/sportsxpress")
@Controller
public class FootballController {

	@Autowired
	FootballService FootballService;

	@Autowired
	VideoService videoService;

	@Autowired
	TeamService teamService;

	@Autowired
	ArticleService articleService;

	public FootballController() {

	}
	
	@RequestMapping(value = "/football_record.do", method = RequestMethod.GET)
	public String footballRecordInfo(FootballRecordVO Record, Model model) throws SQLException {
		Record.setLname("프리미어리그");
	    List<FootballRecordVO> recordList = FootballService.getFootballRecordInfo(Record);
	    model.addAttribute("records", recordList);
	  
	    return "sports/football/football_record";
	}
	// -------------------------------------------------------------------------//
	// -------------------------------------------------------------------------//

	// 최신 뉴스
	@RequestMapping(value = "/football_news.do", method = RequestMethod.GET)
	public String ArticleInfo(ArticleVO getArticle, VideoVO getVideo, Model model) throws SQLException {
		getArticle.setSports_nm("축구");
		getVideo.setSports_nm("축구");
		
		List<ArticleVO> articleList = articleService.getArticleInfo(getArticle);
		List<VideoVO> videoList = videoService.getVideoInfo(getVideo);

		model.addAttribute("articles", articleList);
		model.addAttribute("videos", videoList);
		

		return "sports/football/football_news";

	}
	
	@RequestMapping(value = "/football_schedule.do", method = RequestMethod.GET)
	public String ScheduleInfo(FootballMatchVO getMatch, TeamVO getTeam, Model model) throws SQLException {
		getMatch.setLname("프리미어리그");
		getTeam.setLname("프리미어리그");
		List<FootballMatchVO> matchList = FootballService.getFootballMatchInfo(getMatch);
	    List<TeamVO> TeamList = teamService.getTeamInfo(getTeam);
	    model.addAttribute("matches", matchList);
	    model.addAttribute("teams", TeamList);
		

		return "sports/football/football_schedule";

	}

}