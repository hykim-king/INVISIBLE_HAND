package com.pcwk.ehr.sportsxpress.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pcwk.ehr.sportsxpress.VO.ArticleVO;
import com.pcwk.ehr.sportsxpress.VO.BasketballInfoVO;
import com.pcwk.ehr.sportsxpress.VO.BasketballMatchVO;
import com.pcwk.ehr.sportsxpress.VO.BasketballRecordVO;
import com.pcwk.ehr.sportsxpress.VO.TeamVO;
import com.pcwk.ehr.sportsxpress.VO.VideoVO;
import com.pcwk.ehr.sportsxpress.service.ArticleService;
import com.pcwk.ehr.sportsxpress.service.BasketballService;
import com.pcwk.ehr.sportsxpress.service.TeamService;
import com.pcwk.ehr.sportsxpress.service.VideoService;

@RequestMapping(value = "/sportsxpress")
@Controller
public class BasketballController {

	@Autowired
	BasketballService basketballService;

	@Autowired
	VideoService videoService;

	@Autowired
	TeamService teamService;

	@Autowired
	ArticleService articleService;

	public BasketballController() {

	}

//-----------------------------------------------------------------------------//
	// 최신 뉴스
	@RequestMapping(value = "/basketball_news.do", method = RequestMethod.GET)
	public String ArticleInfo(ArticleVO getArticle, VideoVO getVideo, Model model) throws SQLException {
		getArticle.setSports_nm("농구");
		getVideo.setSports_nm("농구");

		List<ArticleVO> articleList = articleService.getArticleInfo(getArticle);
		List<VideoVO> videoList = videoService.getVideoInfo(getVideo);

		model.addAttribute("articles", articleList);
		model.addAttribute("videos",videoList);

		return "sports/basketball/basketball_news";

	}
	
	@RequestMapping(value = "/basketball_schedule.do", method = RequestMethod.GET)
	public String ScheduleInfo(BasketballMatchVO getMatch, TeamVO getTeam, Model model) throws SQLException {
		List<BasketballMatchVO> matchList = basketballService.getMatchInfo(getMatch);
	    model.addAttribute("matches", matchList);
	    getTeam.setLname("KBL");
	    List<TeamVO> TeamList = teamService.getTeamInfo(getTeam);
	    model.addAttribute("teams", TeamList);
		

		return "sports/basketball/basketball_schedule";

	}

	@RequestMapping(value = "/basketball_record.do", method = RequestMethod.GET)
	public String basketballRecordInfo(BasketballRecordVO getPlayer, Model model) throws SQLException {
	    List<BasketballRecordVO> recordList = basketballService.getBasketballRecordInfo(getPlayer);
	    model.addAttribute("records", recordList);
	    
	    List<BasketballInfoVO> playerList = basketballService.getPlayerInfo(new BasketballInfoVO());
	    model.addAttribute("players", playerList);
	    
	    List<BasketballInfoVO> BestplayerList = basketballService.getBestPlayerInfo(new BasketballInfoVO());
	    model.addAttribute("bestPlayers", BestplayerList);
	    return "sports/basketball/basketball_record";
	    
	    
	}	
//---------------------------------------------------------------------------//
}
