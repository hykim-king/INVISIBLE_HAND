package com.pcwk.ehr.sportsxpress.VO;

import com.pcwk.ehr.sportsxpress.cmn.DTO;

public class BasketballInfoVO extends DTO {
	private int basketid		;
	private String lname           ;
	private String name            ;
	private String profile         ;
	private String logo         ;
	private int played          ;
	private double score           ;
	private double assists         ;
	private double rebound         ;
	private double steal           ;
	private double blocking        ;
	private double point2          ;
	private double point3          ;
	private double ftr             ;
	private double success_yato    ;
	private double success_3p      ;
	private double success_ftr     ;
	
	public BasketballInfoVO() {

	}

	public int getBasketid() {
		return basketid;
	}

	public void setBasketid(int basketid) {
		this.basketid = basketid;
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

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public int getPlayed() {
		return played;
	}

	public void setPlayed(int played) {
		this.played = played;
	}

	public double getScore() {
		return score;
	}

	public void setScore(double score) {
		this.score = score;
	}

	public double getAssists() {
		return assists;
	}

	public void setAssists(double assists) {
		this.assists = assists;
	}

	public double getRebound() {
		return rebound;
	}

	public void setRebound(double rebound) {
		this.rebound = rebound;
	}

	public double getSteal() {
		return steal;
	}

	public void setSteal(double steal) {
		this.steal = steal;
	}

	public double getBlocking() {
		return blocking;
	}

	public void setBlocking(double blocking) {
		this.blocking = blocking;
	}

	public double getPoint2() {
		return point2;
	}

	public void setPoint2(double point2) {
		this.point2 = point2;
	}

	public double getPoint3() {
		return point3;
	}

	public void setPoint3(double point3) {
		this.point3 = point3;
	}

	public double getFtr() {
		return ftr;
	}

	public void setFtr(double ftr) {
		this.ftr = ftr;
	}

	public double getSuccess_yato() {
		return success_yato;
	}

	public void setSuccess_yato(double success_yato) {
		this.success_yato = success_yato;
	}

	public double getSuccess_3p() {
		return success_3p;
	}

	public void setSuccess_3p(double success_3p) {
		this.success_3p = success_3p;
	}

	public double getSuccess_ftr() {
		return success_ftr;
	}

	public void setSuccess_ftr(double success_ftr) {
		this.success_ftr = success_ftr;
	}

	public BasketballInfoVO(int basketid, String lname, String name, String profile, String logo, int played,
			double score, double assists, double rebound, double steal, double blocking, double point2, double point3,
			double ftr, double success_yato, double success_3p, double success_ftr) {
		super();
		this.basketid = basketid;
		this.lname = lname;
		this.name = name;
		this.profile = profile;
		this.logo = logo;
		this.played = played;
		this.score = score;
		this.assists = assists;
		this.rebound = rebound;
		this.steal = steal;
		this.blocking = blocking;
		this.point2 = point2;
		this.point3 = point3;
		this.ftr = ftr;
		this.success_yato = success_yato;
		this.success_3p = success_3p;
		this.success_ftr = success_ftr;
	}
	
	
	
	

}
