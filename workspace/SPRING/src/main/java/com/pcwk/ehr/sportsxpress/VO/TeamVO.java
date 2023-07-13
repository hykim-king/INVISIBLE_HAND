package com.pcwk.ehr.sportsxpress.VO;

import com.pcwk.ehr.sportsxpress.cmn.DTO;

public class TeamVO extends DTO {
	private String	season	 ;
	private String	lname    ;
	private String	location ;
	private String	tname    ;
	private String	logo     ;
	public TeamVO() {
		
	}
	public TeamVO(String season, String lname, String location, String tname, String logo) {
		super();
		this.season = season;
		this.lname = lname;
		this.location = location;
		this.tname = tname;
		this.logo = logo;
	}
	public String getSeason() {
		return season;
	}
	public String getLname() {
		return lname;
	}
	public String getLocation() {
		return location;
	}
	public String getTname() {
		return tname;
	}
	public String getLogo() {
		return logo;
	}
	public void setSeason(String season) {
		this.season = season;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	@Override
	public String toString() {
		return "TeamVO [season=" + season + ", lname=" + lname + ", location=" + location + ", tname=" + tname
				+ ", logo=" + logo + ", toString()=" + super.toString() + "]";
	}
	
	
	
}
