package com.pcwk.ehr.sportsxpress.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pcwk.ehr.sportsxpress.VO.ArticleVO;
import com.pcwk.ehr.sportsxpress.VO.TeamVO;
import com.pcwk.ehr.sportsxpress.VO.VideoVO;
import com.pcwk.ehr.sportsxpress.service.ArticleService;
import com.pcwk.ehr.sportsxpress.service.TeamService;
import com.pcwk.ehr.sportsxpress.service.VideoService;

@Controller // controller bean 등록
public class ArticleController {

//	private final Logger LOG = LogManager.getLogger(getClass());

	public ArticleController() {
		System.out.println("default ArticleController()");
	}

	@Autowired
	ArticleService articleService;

	@Autowired
	VideoService videoService;

	@Autowired
	TeamService teamService;

	@RequestMapping(value = "/sportsxpress/article_info.do", method = RequestMethod.GET)
	public String ArticleInfo(ArticleVO getArticle, Model model) throws SQLException {
		List<ArticleVO> articleList = articleService.getArticleInfo(getArticle);
		model.addAttribute("articles", articleList);

		return "sports/kBaseball_Index";
	}

	@RequestMapping(value = "/sportsxpress/team_info.do", method = RequestMethod.GET)
	public String TeamInfo(TeamVO getTeam, Model model) throws SQLException {
		List<TeamVO> TeamList = teamService.getTeamInfo(getTeam);
		model.addAttribute("teams", TeamList);

		return "sports/team";
	}

	@RequestMapping(value = "/sportsxpress/video_info.do", method = RequestMethod.GET)
	public String VideoInfo(VideoVO getVideo, Model model) throws SQLException {
		List<VideoVO> VideoList = videoService.getVideoInfo(getVideo);
		model.addAttribute("videos", VideoList);

		return "sports/video";
	}

}
