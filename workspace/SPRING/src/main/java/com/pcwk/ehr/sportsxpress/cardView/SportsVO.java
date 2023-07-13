package com.pcwk.ehr.sportsxpress.cardView;

import com.pcwk.ehr.sportsxpress.VO.ArticleVO;
import com.pcwk.ehr.sportsxpress.VO.BaseballMatchVO;
import com.pcwk.ehr.sportsxpress.VO.BasketballInfoVO;
import com.pcwk.ehr.sportsxpress.VO.BasketballMatchVO;
import com.pcwk.ehr.sportsxpress.VO.FootballInfoVO;
import com.pcwk.ehr.sportsxpress.VO.FootballMatchVO;
import com.pcwk.ehr.sportsxpress.VO.GolfMatchVO;
import com.pcwk.ehr.sportsxpress.VO.GolfRankVO;
import com.pcwk.ehr.sportsxpress.VO.TajaInfoVO;
import com.pcwk.ehr.sportsxpress.VO.TeamVO;
import com.pcwk.ehr.sportsxpress.VO.TusuInfoVO;
import com.pcwk.ehr.sportsxpress.VO.VideoVO;
import com.pcwk.ehr.sportsxpress.VO.VolleyballInfoVO;
import com.pcwk.ehr.sportsxpress.VO.VolleyballMatchVO;

public class SportsVO {
	// 기사
	private ArticleVO articleVO;
	
	// 야구경기
	private BaseballMatchVO baseball_MatchVO;
	
	// 농구 선수
	private BasketballInfoVO basketball_InfoVO;
	
	// 농구 경기
	private BasketballMatchVO basketball_MatchVO;
	
	// 축구 선수
	private FootballInfoVO football_InfoVO;
	
	// 축구 리그
	private FootballMatchVO football_MatchVO;
	
	// 골프 리그
	private GolfMatchVO golf_MatchVO;
	
	// 골프 랭킹
	private GolfRankVO golf_RankVO;
	
	// 타자 정보
	private TajaInfoVO taja_InfoVO;
	
	// 팀정보
	private TeamVO teamVO;
	
	// 투수 정보
	private TusuInfoVO tusu_InfoVO;
	
	// 비디오 정보
	private VideoVO videoVO;
	
	// 배구 선수 
	private VolleyballInfoVO volleyball_InfoVO;
	
	// 배구 리그
	private VolleyballMatchVO volleyball_MatchVO;

	public ArticleVO getArticleVO() {
		return articleVO;
	}

	public void setArticleVO(ArticleVO articleVO) {
		this.articleVO = articleVO;
	}

	public BaseballMatchVO getBaseball_MatchVO() {
		return baseball_MatchVO;
	}

	public void setBaseball_MatchVO(BaseballMatchVO baseball_MatchVO) {
		this.baseball_MatchVO = baseball_MatchVO;
	}

	public BasketballInfoVO getBasketball_InfoVO() {
		return basketball_InfoVO;
	}

	public void setBasketball_InfoVO(BasketballInfoVO basketball_InfoVO) {
		this.basketball_InfoVO = basketball_InfoVO;
	}

	public BasketballMatchVO getBasketball_MatchVO() {
		return basketball_MatchVO;
	}

	public void setBasketball_MatchVO(BasketballMatchVO basketball_MatchVO) {
		this.basketball_MatchVO = basketball_MatchVO;
	}

	public FootballInfoVO getFootball_InfoVO() {
		return football_InfoVO;
	}

	public void setFootball_InfoVO(FootballInfoVO football_InfoVO) {
		this.football_InfoVO = football_InfoVO;
	}

	public FootballMatchVO getFootball_MatchVO() {
		return football_MatchVO;
	}

	public void setFootball_MatchVO(FootballMatchVO football_MatchVO) {
		this.football_MatchVO = football_MatchVO;
	}

	public GolfMatchVO getGolf_MatchVO() {
		return golf_MatchVO;
	}

	public void setGolf_MatchVO(GolfMatchVO golf_MatchVO) {
		this.golf_MatchVO = golf_MatchVO;
	}

	public GolfRankVO getGolf_RankVO() {
		return golf_RankVO;
	}

	public void setGolf_RankVO(GolfRankVO golf_RankVO) {
		this.golf_RankVO = golf_RankVO;
	}

	public TajaInfoVO getTaja_InfoVO() {
		return taja_InfoVO;
	}

	public void setTaja_InfoVO(TajaInfoVO taja_InfoVO) {
		this.taja_InfoVO = taja_InfoVO;
	}

	public TeamVO getTeamVO() {
		return teamVO;
	}

	public void setTeamVO(TeamVO teamVO) {
		this.teamVO = teamVO;
	}

	public TusuInfoVO getTusu_InfoVO() {
		return tusu_InfoVO;
	}

	public void setTusu_InfoVO(TusuInfoVO tusu_InfoVO) {
		this.tusu_InfoVO = tusu_InfoVO;
	}

	public VideoVO getVideoVO() {
		return videoVO;
	}

	public void setVideoVO(VideoVO videoVO) {
		this.videoVO = videoVO;
	}

	public VolleyballInfoVO getVolleyball_InfoVO() {
		return volleyball_InfoVO;
	}

	public void setVolleyball_InfoVO(VolleyballInfoVO volleyball_InfoVO) {
		this.volleyball_InfoVO = volleyball_InfoVO;
	}

	public VolleyballMatchVO getVolleyball_MatchVO() {
		return volleyball_MatchVO;
	}

	public void setVolleyball_MatchVO(VolleyballMatchVO volleyball_MatchVO) {
		this.volleyball_MatchVO = volleyball_MatchVO;
	}

	public SportsVO(ArticleVO articleVO, BaseballMatchVO baseball_MatchVO, BasketballInfoVO basketball_InfoVO,
			BasketballMatchVO basketball_MatchVO, FootballInfoVO football_InfoVO, FootballMatchVO football_MatchVO,
			GolfMatchVO golf_MatchVO, GolfRankVO golf_RankVO, TajaInfoVO taja_InfoVO, TeamVO teamVO,
			TusuInfoVO tusu_InfoVO, VideoVO videoVO, VolleyballInfoVO volleyball_InfoVO,
			VolleyballMatchVO volleyball_MatchVO) {
		super();
		this.articleVO = articleVO;
		this.baseball_MatchVO = baseball_MatchVO;
		this.basketball_InfoVO = basketball_InfoVO;
		this.basketball_MatchVO = basketball_MatchVO;
		this.football_InfoVO = football_InfoVO;
		this.football_MatchVO = football_MatchVO;
		this.golf_MatchVO = golf_MatchVO;
		this.golf_RankVO = golf_RankVO;
		this.taja_InfoVO = taja_InfoVO;
		this.teamVO = teamVO;
		this.tusu_InfoVO = tusu_InfoVO;
		this.videoVO = videoVO;
		this.volleyball_InfoVO = volleyball_InfoVO;
		this.volleyball_MatchVO = volleyball_MatchVO;
	}

	@Override
	public String toString() {
		return "CardViewVO [articleVO=" + articleVO + ", baseball_MatchVO=" + baseball_MatchVO + ", basketball_InfoVO="
				+ basketball_InfoVO + ", basketball_MatchVO=" + basketball_MatchVO + ", football_InfoVO="
				+ football_InfoVO + ", football_MatchVO=" + football_MatchVO + ", golf_MatchVO=" + golf_MatchVO
				+ ", golf_RankVO=" + golf_RankVO + ", taja_InfoVO=" + taja_InfoVO + ", teamVO=" + teamVO
				+ ", tusu_InfoVO=" + tusu_InfoVO + ", videoVO=" + videoVO + ", volleyball_InfoVO=" + volleyball_InfoVO
				+ ", volleyball_MatchVO=" + volleyball_MatchVO + "]";
	}
	
}