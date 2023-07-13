package com.pcwk.ehr.sportsxpress.VO;

import com.pcwk.ehr.sportsxpress.cmn.DTO;

public class BasketballRecordVO extends DTO {
	private String tname;
	private String logo;
	private int games;
	private int win;
	private int lose;
	private int score;
	private double winrate;
	
	public BasketballRecordVO() {
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public int getGames() {
		return games;
	}

	public void setGames(int games) {
		this.games = games;
	}

	public int getWin() {
		return win;
	}

	public void setWin(int win) {
		this.win = win;
	}

	public int getLose() {
		return lose;
	}

	public void setLose(int lose) {
		this.lose = lose;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public double getWinrate() {
		return winrate;
	}

	public void setWinrate(double winrate) {
		this.winrate = winrate;
	}

	@Override
	public String toString() {
		return "BasketBallRecordVO [tname=" + tname + ", logo=" + logo + ", games=" + games + ", win=" + win + ", lose="
				+ lose + ", score=" + score + ", winrate=" + winrate + "]";
	}
	
	
}
