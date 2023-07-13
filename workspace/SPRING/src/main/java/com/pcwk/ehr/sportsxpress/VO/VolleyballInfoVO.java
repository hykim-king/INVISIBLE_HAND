package com.pcwk.ehr.sportsxpress.VO;

import com.pcwk.ehr.sportsxpress.cmn.DTO;

public class VolleyballInfoVO extends DTO {
	private int	volleyid	;
	private String	name        ;
	private String	profile     ;
	private int	score       ;
	private double	attack_sr   ;
	private double	sub         ;
	private double	blocking    ;
	private double	defense     ;
	private double	sets        ;
	private double	recieve_ef  ;
	
	public VolleyballInfoVO() {

	}

	public VolleyballInfoVO(int volleyid, String name, String profile, int score, double attack_sr, double sub,
			double blocking, double defense, double sets, double recieve_ef) {
		super();
		this.volleyid = volleyid;
		this.name = name;
		this.profile = profile;
		this.score = score;
		this.attack_sr = attack_sr;
		this.sub = sub;
		this.blocking = blocking;
		this.defense = defense;
		this.sets = sets;
		this.recieve_ef = recieve_ef;
	}

	public int getVolleyid() {
		return volleyid;
	}

	public void setVolleyid(int volleyid) {
		this.volleyid = volleyid;
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

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public double getAttack_sr() {
		return attack_sr;
	}

	public void setAttack_sr(double attack_sr) {
		this.attack_sr = attack_sr;
	}

	public double getSub() {
		return sub;
	}

	public void setSub(double sub) {
		this.sub = sub;
	}

	public double getBlocking() {
		return blocking;
	}

	public void setBlocking(double blocking) {
		this.blocking = blocking;
	}

	public double getDefense() {
		return defense;
	}

	public void setDefense(double defense) {
		this.defense = defense;
	}

	public double getSets() {
		return sets;
	}

	public void setSets(double sets) {
		this.sets = sets;
	}

	public double getRecieve_ef() {
		return recieve_ef;
	}

	public void setRecieve_ef(double recieve_ef) {
		this.recieve_ef = recieve_ef;
	}

	
	
}
