package com.pcwk.ehr.sportsxpress.VO;

import com.pcwk.ehr.sportsxpress.cmn.DTO;

public class FootballInfoVO extends DTO {

	private int	footid	   ;
	private String	lname      ;
	private String	name       ;
	private String	profile    ;
	private int	score      ;
	private int	assists    ;
	private int	points     ;
	private int	played     ;
	private int	plravg     ;
	private int	mvp        ;
	private int	best11     ;
	private int	shots      ;
	private int	shotsont   ;
	private int	gpers      ;
	private int	gperg      ;
	private int	cfouls     ;
	private int	dfouls     ;
	private int	yellow     ;
	private int	red        ;
	private int	corners    ;
	private int	pkick      ;
	private int	offsides   ;
	private int	ptime      ;
	
	public FootballInfoVO() {

	}

	public FootballInfoVO(int footid, String lname, String name, String profile, int score, int assists, int points,
			int played, int plravg, int mvp, int best11, int shots, int shotsont, int gpers, int gperg, int cfouls,
			int dfouls, int yellow, int red, int corners, int pkick, int offsides, int ptime) {
		super();
		this.footid = footid;
		this.lname = lname;
		this.name = name;
		this.profile = profile;
		this.score = score;
		this.assists = assists;
		this.points = points;
		this.played = played;
		this.plravg = plravg;
		this.mvp = mvp;
		this.best11 = best11;
		this.shots = shots;
		this.shotsont = shotsont;
		this.gpers = gpers;
		this.gperg = gperg;
		this.cfouls = cfouls;
		this.dfouls = dfouls;
		this.yellow = yellow;
		this.red = red;
		this.corners = corners;
		this.pkick = pkick;
		this.offsides = offsides;
		this.ptime = ptime;
	}

	public int getFootid() {
		return footid;
	}

	public String getLname() {
		return lname;
	}

	public String getName() {
		return name;
	}

	public String getProfile() {
		return profile;
	}

	public int getScore() {
		return score;
	}

	public int getAssists() {
		return assists;
	}

	public int getPoints() {
		return points;
	}

	public int getPlayed() {
		return played;
	}

	public int getPlravg() {
		return plravg;
	}

	public int getMvp() {
		return mvp;
	}

	public int getBest11() {
		return best11;
	}

	public int getShots() {
		return shots;
	}

	public int getShotsont() {
		return shotsont;
	}

	public int getGpers() {
		return gpers;
	}

	public int getGperg() {
		return gperg;
	}

	public int getCfouls() {
		return cfouls;
	}

	public int getDfouls() {
		return dfouls;
	}

	public int getYellow() {
		return yellow;
	}

	public int getRed() {
		return red;
	}

	public int getCorners() {
		return corners;
	}

	public int getPkick() {
		return pkick;
	}

	public int getOffsides() {
		return offsides;
	}

	public int getPtime() {
		return ptime;
	}

	public void setFootid(int footid) {
		this.footid = footid;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public void setAssists(int assists) {
		this.assists = assists;
	}

	public void setPoints(int points) {
		this.points = points;
	}

	public void setPlayed(int played) {
		this.played = played;
	}

	public void setPlravg(int plravg) {
		this.plravg = plravg;
	}

	public void setMvp(int mvp) {
		this.mvp = mvp;
	}

	public void setBest11(int best11) {
		this.best11 = best11;
	}

	public void setShots(int shots) {
		this.shots = shots;
	}

	public void setShotsont(int shotsont) {
		this.shotsont = shotsont;
	}

	public void setGpers(int gpers) {
		this.gpers = gpers;
	}

	public void setGperg(int gperg) {
		this.gperg = gperg;
	}

	public void setCfouls(int cfouls) {
		this.cfouls = cfouls;
	}

	public void setDfouls(int dfouls) {
		this.dfouls = dfouls;
	}

	public void setYellow(int yellow) {
		this.yellow = yellow;
	}

	public void setRed(int red) {
		this.red = red;
	}

	public void setCorners(int corners) {
		this.corners = corners;
	}

	public void setPkick(int pkick) {
		this.pkick = pkick;
	}

	public void setOffsides(int offsides) {
		this.offsides = offsides;
	}

	public void setPtime(int ptime) {
		this.ptime = ptime;
	}

	@Override
	public String toString() {
		return "Footbal_InfoVO [footid=" + footid + ", lname=" + lname + ", name=" + name + ", profile=" + profile
				+ ", score=" + score + ", assists=" + assists + ", points=" + points + ", played=" + played
				+ ", plravg=" + plravg + ", mvp=" + mvp + ", best11=" + best11 + ", shots=" + shots + ", shotsont="
				+ shotsont + ", gpers=" + gpers + ", gperg=" + gperg + ", cfouls=" + cfouls + ", dfouls=" + dfouls
				+ ", yellow=" + yellow + ", red=" + red + ", corners=" + corners + ", pkick=" + pkick + ", offsides="
				+ offsides + ", ptime=" + ptime + ", toString()=" + super.toString() + "]";
	}
	
	
}
