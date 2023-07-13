package com.pcwk.ehr.sportsxpress.VO;

import com.pcwk.ehr.sportsxpress.cmn.DTO;

public class TusuInfoVO extends DTO{
	
	private int tusuid		;
	private String lname        ;
	private String name         ;
	private String profile      ;
	
	private int eravg        ;
	private int played       ;
	private int inning       ;
	private int win          ;
	private int lose         ;
	private int save         ;
	private int hold         ;
	private int k            ;
	private int ob           ;
	private int ohr          ;
	private int r            ;
	private int ball4        ;
	private int bb           ;
	private int wper         ;
	private int whip         ;
	private int k9           ;
	private int bb9          ;
	private int kbb          ;
	private int kper         ;
	private int bbper        ;
	private int wpa          ;
	private int war          ;
	private String logo;
	
	public TusuInfoVO() {

	}

	public TusuInfoVO(int tusuid, String lname, String name, String profile, int eravg, int played, int inning,
			int win, int lose, int save, int hold, int k, int ob, int ohr, int r, int ball4, int bb, int wper, int whip,
			int k9, int bb9, int kbb, int kper, int bbper, int wpa, int war, String logo) {
		super();
		this.tusuid = tusuid;
		this.lname = lname;
		this.name = name;
		this.profile = profile;
		this.eravg = eravg;
		this.played = played;
		this.inning = inning;
		this.win = win;
		this.lose = lose;
		this.save = save;
		this.hold = hold;
		this.k = k;
		this.ob = ob;
		this.ohr = ohr;
		this.r = r;
		this.ball4 = ball4;
		this.bb = bb;
		this.wper = wper;
		this.whip = whip;
		this.k9 = k9;
		this.bb9 = bb9;
		this.kbb = kbb;
		this.kper = kper;
		this.bbper = bbper;
		this.wpa = wpa;
		this.war = war;
		this.logo = logo;
	}

	public int getTusuid() {
		return tusuid;
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

	public int getEravg() {
		return eravg;
	}

	public int getPlayed() {
		return played;
	}

	public int getInning() {
		return inning;
	}

	public int getWin() {
		return win;
	}

	public int getLose() {
		return lose;
	}

	public int getSave() {
		return save;
	}

	public int getHold() {
		return hold;
	}

	public int getK() {
		return k;
	}

	public int getOb() {
		return ob;
	}

	public int getOhr() {
		return ohr;
	}

	public int getR() {
		return r;
	}

	public int getBall4() {
		return ball4;
	}

	public int getBb() {
		return bb;
	}

	public int getWper() {
		return wper;
	}

	public int getWhip() {
		return whip;
	}

	public int getK9() {
		return k9;
	}

	public int getBb9() {
		return bb9;
	}

	public int getKbb() {
		return kbb;
	}

	public int getKper() {
		return kper;
	}

	public int getBbper() {
		return bbper;
	}

	public int getWpa() {
		return wpa;
	}

	public int getWar() {
		return war;
	}

	public void setTusuid(int tusuid) {
		this.tusuid = tusuid;
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

	public void setEravg(int eravg) {
		this.eravg = eravg;
	}

	public void setPlayed(int played) {
		this.played = played;
	}

	public void setInning(int inning) {
		this.inning = inning;
	}

	public void setWin(int win) {
		this.win = win;
	}

	public void setLose(int lose) {
		this.lose = lose;
	}

	public void setSave(int save) {
		this.save = save;
	}

	public void setHold(int hold) {
		this.hold = hold;
	}

	public void setK(int k) {
		this.k = k;
	}

	public void setOb(int ob) {
		this.ob = ob;
	}

	public void setOhr(int ohr) {
		this.ohr = ohr;
	}

	public void setR(int r) {
		this.r = r;
	}

	public void setBall4(int ball4) {
		this.ball4 = ball4;
	}

	public void setBb(int bb) {
		this.bb = bb;
	}

	public void setWper(int wper) {
		this.wper = wper;
	}

	public void setWhip(int whip) {
		this.whip = whip;
	}

	public void setK9(int k9) {
		this.k9 = k9;
	}

	public void setBb9(int bb9) {
		this.bb9 = bb9;
	}

	public void setKbb(int kbb) {
		this.kbb = kbb;
	}

	public void setKper(int kper) {
		this.kper = kper;
	}

	public void setBbper(int bbper) {
		this.bbper = bbper;
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
		return "TusuInfoVO [tusuid=" + tusuid + ", lname=" + lname + ", name=" + name + ", profile=" + profile
				+ ", eravg=" + eravg + ", played=" + played + ", inning=" + inning + ", win=" + win + ", lose=" + lose
				+ ", save=" + save + ", hold=" + hold + ", k=" + k + ", ob=" + ob + ", ohr=" + ohr + ", r=" + r
				+ ", ball4=" + ball4 + ", bb=" + bb + ", wper=" + wper + ", whip=" + whip + ", k9=" + k9 + ", bb9="
				+ bb9 + ", kbb=" + kbb + ", kper=" + kper + ", bbper=" + bbper + ", wpa=" + wpa + ", war=" + war
				+ ", logo=" + logo + "]";
	}


	
	
}
