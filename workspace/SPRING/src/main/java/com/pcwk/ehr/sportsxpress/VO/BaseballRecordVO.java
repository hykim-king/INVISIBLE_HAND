package com.pcwk.ehr.sportsxpress.VO;

import com.pcwk.ehr.sportsxpress.cmn.DTO;

public class BaseballRecordVO extends DTO{
	private String tname;
	private String logo;
	private int games;
	private int win;
	private int lose;
	private int draw;
	private double winrate;
	
	public BaseballRecordVO() {
		// TODO Auto-generated constructor stub
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

	public int getDraw() {
		return draw;
	}

	public void setDraw(int draw) {
		this.draw = draw;
	}

	public double getWinrate() {
		return winrate;
	}

	public void setWinrate(double winrate) {
		this.winrate = winrate;
	}

	public BaseballRecordVO(String tname, String logo, int games, int win, int lose, int draw, double winrate) {
		super();
		this.tname = tname;
		this.logo = logo;
		this.games = games;
		this.win = win;
		this.lose = lose;
		this.draw = draw;
		this.winrate = winrate;
	}
	
	
}
