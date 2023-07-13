package com.pcwk.ehr.sportsxpress.VO;

import com.pcwk.ehr.sportsxpress.cmn.DTO;

public class GolfRankVO extends DTO {
	private int golfid	;
	private String lname    ;
	private String name     ;
	private String profile  ;
	private String nation   ;
	private String ernings  ;
	private double point    ;
	private double savg     ;
	private double ddavg    ;
	private double appgrn   ;
	private double pavg     ;
	private double fhit     ;
	private int top10f   ;
	
	public GolfRankVO() {

	}

	public GolfRankVO(int golfid, String lname, String name, String profile, String nation, String ernings,
			double point, double savg, double ddavg, double appgrn, double pavg, double fhit, int top10f) {
		super();
		this.golfid = golfid;
		this.lname = lname;
		this.name = name;
		this.profile = profile;
		this.nation = nation;
		this.ernings = ernings;
		this.point = point;
		this.savg = savg;
		this.ddavg = ddavg;
		this.appgrn = appgrn;
		this.pavg = pavg;
		this.fhit = fhit;
		this.top10f = top10f;
	}

	public int getGolfid() {
		return golfid;
	}

	public void setGolfid(int golfid) {
		this.golfid = golfid;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getErnings() {
		return ernings;
	}

	public void setErnings(String ernings) {
		this.ernings = ernings;
	}

	public double getPoint() {
		return point;
	}

	public void setPoint(double point) {
		this.point = point;
	}

	public double getSavg() {
		return savg;
	}

	public void setSavg(double savg) {
		this.savg = savg;
	}

	public double getDdavg() {
		return ddavg;
	}

	public void setDdavg(double ddavg) {
		this.ddavg = ddavg;
	}

	public double getAppgrn() {
		return appgrn;
	}

	public void setAppgrn(double appgrn) {
		this.appgrn = appgrn;
	}

	public double getPavg() {
		return pavg;
	}

	public void setPavg(double pavg) {
		this.pavg = pavg;
	}

	public double getFhit() {
		return fhit;
	}

	public void setFhit(double fhit) {
		this.fhit = fhit;
	}

	public int getTop10f() {
		return top10f;
	}

	public void setTop10f(int top10f) {
		this.top10f = top10f;
	}
		
	
	
	
	
}
