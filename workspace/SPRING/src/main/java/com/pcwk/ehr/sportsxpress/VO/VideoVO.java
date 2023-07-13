package com.pcwk.ehr.sportsxpress.VO;

import com.pcwk.ehr.sportsxpress.cmn.DTO;

public class VideoVO extends DTO {
	private int	videono		;
	private String	sports_nm   ;
	private String	title       ;
	private String	reg_id      ;
	private String	reg_dt      ;
	private String	hyperlink   ;
	private int	views       ;
	private String video_thumb;
	private String video_time;
	
	
	public VideoVO() {

	}


	public VideoVO(int videono, String sports_nm, String title, String reg_id, String reg_dt, String hyperlink,
			int views, String video_thumb, String video_time) {
		super();
		this.videono = videono;
		this.sports_nm = sports_nm;
		this.title = title;
		this.reg_id = reg_id;
		this.reg_dt = reg_dt;
		this.hyperlink = hyperlink;
		this.views = views;
		this.video_thumb = video_thumb;
		this.video_time = video_time;
	}


	public int getVideono() {
		return videono;
	}


	public String getSports_nm() {
		return sports_nm;
	}


	public String getTitle() {
		return title;
	}


	public String getReg_id() {
		return reg_id;
	}


	public String getReg_dt() {
		return reg_dt;
	}


	public String getHyperlink() {
		return hyperlink;
	}


	public int getViews() {
		return views;
	}


	public String getVideo_thumb() {
		return video_thumb;
	}


	public String getVideo_time() {
		return video_time;
	}


	public void setVideono(int videono) {
		this.videono = videono;
	}


	public void setSports_nm(String sports_nm) {
		this.sports_nm = sports_nm;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public void setReg_id(String reg_id) {
		this.reg_id = reg_id;
	}


	public void setReg_dt(String reg_dt) {
		this.reg_dt = reg_dt;
	}


	public void setHyperlink(String hyperlink) {
		this.hyperlink = hyperlink;
	}


	public void setViews(int views) {
		this.views = views;
	}


	public void setVideo_thumb(String video_thumb) {
		this.video_thumb = video_thumb;
	}


	public void setVideo_time(String video_time) {
		this.video_time = video_time;
	}


	@Override
	public String toString() {
		return "VideoVO [videono=" + videono + ", sports_nm=" + sports_nm + ", title=" + title + ", reg_id=" + reg_id
				+ ", reg_dt=" + reg_dt + ", hyperlink=" + hyperlink + ", views=" + views + ", video_thumb="
				+ video_thumb + ", video_time=" + video_time + "]";
	}

	
	
	
	
	
}
