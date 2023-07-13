package com.pcwk.ehr.sportsxpress.VO;

import com.pcwk.ehr.sportsxpress.cmn.DTO;

public class FootballRecordVO extends DTO {
	private String lname;
	private String tname;
	private String logo;
	private int games;
	private int winpoint;
	private int win;
	private int draw;
	private int lose;
	private int getscore;
	private int missscore;
	private int goaldiff;
	
	public FootballRecordVO() {
	}
	
	public FootballRecordVO(String lname, String tname, String logo, int games, int winpoint, int win, int draw, int lose,
			int getscore, int missscore, int goaldiff) {
		super();
		this.lname = lname;
		this.tname = tname;
		this.logo = logo;
		this.games = games;
		this.winpoint = winpoint;
		this.win = win;
		this.draw = draw;
		this.lose = lose;
		this.getscore = getscore;
		this.missscore = missscore;
		this.goaldiff = goaldiff;
	}

	
	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getTname() {
		return tname;
	}
	public void setHname(String tname) {
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
	public int getWinpoint() {
		return winpoint;
	}
	public void setWinpoint(int winpoint) {
		this.winpoint = winpoint;
	}
	public int getWin() {
		return win;
	}
	public void setWin(int win) {
		this.win = win;
	}
	public int getDraw() {
		return draw;
	}
	public void setDraw(int draw) {
		this.draw = draw;
	}
	public int getLose() {
		return lose;
	}
	public void setLose(int lose) {
		this.lose = lose;
	}
	public int getGetscore() {
		return getscore;
	}
	public void setGetscore(int getscore) {
		this.getscore = getscore;
	}
	public int getMissscore() {
		return missscore;
	}
	public void setMissscore(int missscore) {
		this.missscore = missscore;
	}
	public int getGoaldiff() {
		return goaldiff;
	}
	public void setGoaldiff(int goaldiff) {
		this.goaldiff = goaldiff;
	}

	@Override
	public String toString() {
		return "FootballRecordVO [lname=" + lname + ", tname=" + tname + ", logo=" + logo + ", games=" + games
				+ ", winpoint=" + winpoint + ", win=" + win + ", draw=" + draw + ", lose=" + lose + ", getscore="
				+ getscore + ", missscore=" + missscore + ", goaldiff=" + goaldiff + "]";
	}
	

	
	
	
}
