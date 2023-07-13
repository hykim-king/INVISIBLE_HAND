package com.pcwk.ehr.sportsxpress.VO;

import com.pcwk.ehr.sportsxpress.cmn.DTO;

public class ArticleVO extends DTO {
	private int articleno      ;
	private String thumbnail   ;
	private String sports_nm   ;
	private String title       ;
	private String reg_id      ;
	private String reg_dt      ;
	private String hyperlink   ;
	private int views          ;
	
	
	public ArticleVO() {}

	
	public ArticleVO(int articleno, String thumbnail, String sports_nm, String title, String reg_id, String reg_dt,
			String hyperlink, int views) {
		super();
		this.articleno = articleno;
		this.thumbnail = thumbnail;
		this.sports_nm = sports_nm;
		this.title = title;
		this.reg_id = reg_id;
		this.reg_dt = reg_dt;
		this.hyperlink = hyperlink;
		this.views = views;
	}


	public int getArticleNo() {
		return articleno;
	}


	public void setArticleNo(int articleNo) {
		this.articleno = articleNo;
	}


	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}


	public String getSports_nm() {
		return sports_nm;
	}


	public void setSports_nm(String sports_nm) {
		this.sports_nm = sports_nm;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getReg_id() {
		return reg_id;
	}


	public void setReg_id(String reg_id) {
		this.reg_id = reg_id;
	}


	public String getReg_dt() {
		return reg_dt;
	}


	public void setReg_dt(String reg_dt) {
		this.reg_dt = reg_dt;
	}


	public String getHyperlink() {
		return hyperlink;
	}


	public void setHyperlink(String hyperlink) {
		this.hyperlink = hyperlink;
	}


	public int getViews() {
		return views;
	}


	public void setViews(int views) {
		this.views = views;
	}


	@Override
	public String toString() {
		return "ArticleVO [articleno=" + articleno + ", thumbnail=" + thumbnail + ", sports_nm=" + sports_nm
				+ ", title=" + title + ", reg_id=" + reg_id + ", reg_dt=" + reg_dt + ", hyperlink=" + hyperlink
				+ ", views=" + views + ", toString()=" + super.toString() + "]";
	}
	
	
}
