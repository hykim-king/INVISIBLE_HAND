package com.pcwk.ehr.sportsxpress.controller;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pcwk.ehr.sportsxpress.VO.ArticleVO;
import com.pcwk.ehr.sportsxpress.VO.GolfMatchVO;
import com.pcwk.ehr.sportsxpress.VO.GolfRankVO;
import com.pcwk.ehr.sportsxpress.VO.TeamVO;
import com.pcwk.ehr.sportsxpress.VO.VideoVO;
import com.pcwk.ehr.sportsxpress.service.ArticleService;
import com.pcwk.ehr.sportsxpress.service.GolfService;
import com.pcwk.ehr.sportsxpress.service.TeamService;
import com.pcwk.ehr.sportsxpress.service.VideoService;

@RequestMapping(value = "/sportsxpress")
@Controller
public class GolfController {
	final Logger LOG = LogManager.getLogger(getClass());

	@Autowired
	GolfService golfService;

	@Autowired
	VideoService videoService;

	@Autowired
	TeamService teamService;

	@Autowired
	ArticleService articleService;

	public GolfController() {

	}

	// -------------------------------------------------------------------------//

	// 최신 뉴스
	@RequestMapping(value = "/golf_news.do", method = RequestMethod.GET)
	public String ArticleInfo(ArticleVO getArticle, VideoVO getVideo, Model model) throws SQLException {
		getArticle.setSports_nm("골프");
		getVideo.setSports_nm("골프");
		
		List<ArticleVO> articleList = articleService.getArticleInfo(getArticle);
		List<VideoVO> videoList = videoService.getVideoInfo(getVideo);

		model.addAttribute("articles", articleList);
		model.addAttribute("videos",videoList);


		return "sports/golf/golf_news";

	}
	
	// 일정 결과
	@RequestMapping(value = "/golf_schedule.do", method = RequestMethod.GET)
	public String ScheduleInfo(GolfMatchVO getMatch, Model model) throws SQLException {
		List<GolfMatchVO> matchList = golfService.getMatchInfo(getMatch);
		model.addAttribute("matches", matchList);

		return "sports/golf/golf_schedule";
	}
	
	// 기록_순위
	@RequestMapping(value = "/golf_record.do", method = RequestMethod.GET)
	public String golfRecordRankInfo(GolfRankVO getRank, Model model) throws SQLException {
		List<GolfRankVO> playerList = golfService.getPlayerInfo(getRank);
		model.addAttribute("players", playerList);
		
		List<GolfRankVO> bestPlayerList = golfService.getBestPlayerInfo(getRank);
		model.addAttribute("bestplayers", bestPlayerList);
		return "sports/golf/golf_record";
	}
	// -------------------------------------------------------------------------//
}
