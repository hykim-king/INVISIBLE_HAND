package com.pcwk.ehr.sportsxpress.VO;

import com.pcwk.ehr.sportsxpress.cmn.DTO;

public class FootballMatchVO extends DTO {
	private int	footno		;
	private String	season      ;
	private String	lname       ;
	private String	time        ;
	private String	location    ;
	private String	hname       ;
	private int	hscore      ;
	private String	ateam       ;
	private int	ascore      ;
	private String	mlink       ;
	private String	vlink       ;
	private String hname_logo;
	private String ateam_logo;
	
	
	public FootballMatchVO() {

	}


	public FootballMatchVO(int footno, String season, String lname, String time, String location, String hname,
			int hscore, String ateam, int ascore, String mlink, String vlink, String hname_logo, String ateam_logo) {
		super();
		this.footno = footno;
		this.season = season;
		this.lname = lname;
		this.time = time;
		this.location = location;
		this.hname = hname;
		this.hscore = hscore;
		this.ateam = ateam;
		this.ascore = ascore;
		this.mlink = mlink;
		this.vlink = vlink;
		this.hname_logo = hname_logo;
		this.ateam_logo = ateam_logo;
	}


	public int getFootno() {
		return footno;
	}


	public String getSeason() {
		return season;
	}


	public String getLname() {
		return lname;
	}


	public String getTime() {
		return time;
	}


	public String getLocation() {
		return location;
	}


	public String getHname() {
		return hname;
	}


	public int getHscore() {
		return hscore;
	}


	public String getAteam() {
		return ateam;
	}


	public int getAscore() {
		return ascore;
	}


	public String getMlink() {
		return mlink;
	}


	public String getVlink() {
		return vlink;
	}


	public String getHname_logo() {
		return hname_logo;
	}


	public String getAteam_logo() {
		return ateam_logo;
	}


	public void setFootno(int footno) {
		this.footno = footno;
	}


	public void setSeason(String season) {
		this.season = season;
	}


	public void setLname(String lname) {
		this.lname = lname;
	}


	public void setTime(String time) {
		this.time = time;
	}


	public void setLocation(String location) {
		this.location = location;
	}


	public void setHname(String hname) {
		this.hname = hname;
	}


	public void setHscore(int hscore) {
		this.hscore = hscore;
	}


	public void setAteam(String ateam) {
		this.ateam = ateam;
	}


	public void setAscore(int ascore) {
		this.ascore = ascore;
	}


	public void setMlink(String mlink) {
		this.mlink = mlink;
	}


	public void setVlink(String vlink) {
		this.vlink = vlink;
	}


	public void setHname_logo(String hname_logo) {
		this.hname_logo = hname_logo;
	}


	public void setAteam_logo(String ateam_logo) {
		this.ateam_logo = ateam_logo;
	}


	@Override
	public String toString() {
		return "FootballMatchVO [footno=" + footno + ", season=" + season + ", lname=" + lname + ", time=" + time
				+ ", location=" + location + ", hname=" + hname + ", hscore=" + hscore + ", ateam=" + ateam
				+ ", ascore=" + ascore + ", mlink=" + mlink + ", vlink=" + vlink + ", hname_logo=" + hname_logo
				+ ", ateam_logo=" + ateam_logo + "]";
	}
	
}


