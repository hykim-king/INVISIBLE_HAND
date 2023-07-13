package com.pcwk.ehr.sportsxpress.VO;

import com.pcwk.ehr.sportsxpress.cmn.DTO;

public class TajaInfoVO extends DTO{
	private int	tajaid	;
	private String	lname   ;
	private String	name    ;
	private String	profile ;
	private int	avg     ;
	private int	played  ;
	private int	hits    ;
	private int	safety  ;
	private int	b2      ;
	private int	b3      ;
	private int	hr      ;
	private int	rbi     ;
	private int	score   ;
	private int	steal   ;
	private int	ball4   ;
	private int	k       ;
	private int	obp     ;
	private int	slg     ;
	private int	ops     ;
	private int	isop    ;
	private int	babip   ;
	private int	woba    ;
	private int	wrc     ;
	private int	wpa     ;
	private int	war     ;
	private String logo;
	
	public TajaInfoVO() {

	}

	public TajaInfoVO(int tajaid, String lname, String name, String profile, int avg, int played, int hits, int safety,
			int b2, int b3, int hr, int rbi, int score, int steal, int ball4, int k, int obp, int slg, int ops,
			int isop, int babip, int woba, int wrc, int wpa, int war,String logo) {
		super();
		this.tajaid = tajaid;
		this.lname = lname;
		this.name = name;
		this.profile = profile;
		this.avg = avg;
		this.played = played;
		this.hits = hits;
		this.safety = safety;
		this.b2 = b2;
		this.b3 = b3;
		this.hr = hr;
		this.rbi = rbi;
		this.score = score;
		this.steal = steal;
		this.ball4 = ball4;
		this.k = k;
		this.obp = obp;
		this.slg = slg;
		this.ops = ops;
		this.isop = isop;
		this.babip = babip;
		this.woba = woba;
		this.wrc = wrc;
		this.wpa = wpa;
		this.war = war;
		this.logo = logo;
	}

	public int getTajaid() {
		return tajaid;
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

	public int getAvg() {
		return avg;
	}

	public int getPlayed() {
		return played;
	}

	public int getHits() {
		return hits;
	}

	public int getSafety() {
		return safety;
	}

	public int getB2() {
		return b2;
	}

	public int getB3() {
		return b3;
	}

	public int getHr() {
		return hr;
	}

	public int getRbi() {
		return rbi;
	}

	public int getScore() {
		return score;
	}

	public int getSteal() {
		return steal;
	}

	public int getBall4() {
		return ball4;
	}

	public int getK() {
		return k;
	}

	public int getObp() {
		return obp;
	}

	public int getSlg() {
		return slg;
	}

	public int getOps() {
		return ops;
	}

	public int getIsop() {
		return isop;
	}

	public int getBabip() {
		return babip;
	}

	public int getWoba() {
		return woba;
	}

	public int getWrc() {
		return wrc;
	}

	public int getWpa() {
		return wpa;
	}

	public int getWar() {
		return war;
	}

	public void setTajaid(int tajaid) {
		this.tajaid = tajaid;
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

	public void setAvg(int avg) {
		this.avg = avg;
	}

	public void setPlayed(int played) {
		this.played = played;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	public void setSafety(int safety) {
		this.safety = safety;
	}

	public void setB2(int b2) {
		this.b2 = b2;
	}

	public void setB3(int b3) {
		this.b3 = b3;
	}

	public void setHr(int hr) {
		this.hr = hr;
	}

	public void setRbi(int rbi) {
		this.rbi = rbi;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public void setSteal(int steal) {
		this.steal = steal;
	}

	public void setBall4(int ball4) {
		this.ball4 = ball4;
	}

	public void setK(int k) {
		this.k = k;
	}

	public void setObp(int obp) {
		this.obp = obp;
	}

	public void setSlg(int slg) {
		this.slg = slg;
	}

	public void setOps(int ops) {
		this.ops = ops;
	}

	public void setIsop(int isop) {
		this.isop = isop;
	}

	public void setBabip(int babip) {
		this.babip = babip;
	}

	public void setWoba(int woba) {
		this.woba = woba;
	}

	public void setWrc(int wrc) {
		this.wrc = wrc;
	}

	public void setWpa(int wpa) {
		this.wpa = wpa;
	}

	public void setWar(int war) {
		this.war = war;
	}
	
	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	@Override
	public String toString() {
		return "TajaInfoVO [tajaid=" + tajaid + ", lname=" + lname + ", name=" + name + ", profile=" + profile
				+ ", avg=" + avg + ", played=" + played + ", hits=" + hits + ", safety=" + safety + ", b2=" + b2
				+ ", b3=" + b3 + ", hr=" + hr + ", rbi=" + rbi + ", score=" + score + ", steal=" + steal + ", ball4="
				+ ball4 + ", k=" + k + ", obp=" + obp + ", slg=" + slg + ", ops=" + ops + ", isop=" + isop + ", babip="
				+ babip + ", woba=" + woba + ", wrc=" + wrc + ", wpa=" + wpa + ", war=" + war + ", logo=" + logo + "]";
	}


	
	
}
