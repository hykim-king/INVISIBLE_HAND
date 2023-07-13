package com.pcwk.ehr.sportsxpress.VO;

import com.pcwk.ehr.sportsxpress.cmn.DTO;

public class RecordVO extends DTO {
	private String hname;
	private String logo;
	private String hscore;
	private int win;
	private int lose;
	private int draw;
	private double winrate;
	
	public RecordVO() {
		// TODO Auto-generated constructor stub
	}

	public String getHname() {
		return hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getHscore() {
		return hscore;
	}

	public void setHscore(String hscore) {
		this.hscore = hscore;
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

	public RecordVO(String hname, String logo, String hscore, int win, int lose, int draw, double winrate) {
		super();
		this.hname = hname;
		this.logo = logo;
		this.hscore = hscore;
		this.win = win;
		this.lose = lose;
		this.draw = draw;
		this.winrate = winrate;
	}
	
	
}
