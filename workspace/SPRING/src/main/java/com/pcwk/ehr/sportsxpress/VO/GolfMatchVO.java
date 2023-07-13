package com.pcwk.ehr.sportsxpress.VO;

import com.pcwk.ehr.sportsxpress.cmn.DTO;

public class GolfMatchVO extends DTO {
	
	private int golfno	;
	private String lname    ;
	private String cname    ;
	private String sdate    ;
	private String edate    ;
	private String winner   ;
	private String score    ;
	
	public GolfMatchVO() {

	}

	public GolfMatchVO(int golfno, String lname, String cname, String sdate, String edate, String winner,
			String score) {
		super();
		this.golfno = golfno;
		this.lname = lname;
		this.cname = cname;
		this.sdate = sdate;
		this.edate = edate;
		this.winner = winner;
		this.score = score;
	}

	public int getGolfno() {
		return golfno;
	}

	public String getLname() {
		return lname;
	}

	public String getCname() {
		return cname;
	}

	public String getSdate() {
		return sdate;
	}

	public String getEdate() {
		return edate;
	}

	public String getWinner() {
		return winner;
	}

	public String getScore() {
		return score;
	}

	public void setGolfno(int golfno) {
		this.golfno = golfno;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public void setSdate(String sdate) {
		this.sdate = sdate;
	}

	public void setEdate(String edate) {
		this.edate = edate;
	}

	public void setWinner(String winner) {
		this.winner = winner;
	}

	public void setScore(String score) {
		this.score = score;
	}

	@Override
	public String toString() {
		return "Golf_MatchVO [golfno=" + golfno + ", lname=" + lname + ", cname=" + cname + ", sdate=" + sdate
				+ ", edate=" + edate + ", winner=" + winner + ", score=" + score + ", toString()=" + super.toString()
				+ "]";
	}
	
	
	

}
