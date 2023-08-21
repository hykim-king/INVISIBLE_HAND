package com.pcwk.ehr.VO;

public class LikesVO {
	private int likesNumber;
	private String nickname   ;
	private int likesType  ; //10게시판, 20댓글
	private int typeNumber ; //postNumber , commentNumber
	
	public LikesVO() {}
	
	public LikesVO(int likesNumber, String nickname, int likesType, int typeNumber) {
		super();
		this.likesNumber = likesNumber;
		this.nickname = nickname;
		this.likesType = likesType;
		this.typeNumber = typeNumber;
	}

	public int getLikesNumber() {
		return likesNumber;
	}

	public void setLikesNumber(int likesNumber) {
		this.likesNumber = likesNumber;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public int getLikesType() {
		return likesType;
	}

	public void setLikesType(int likesType) {
		this.likesType = likesType;
	}

	public int getTypeNumber() {
		return typeNumber;
	}

	public void setTypeNumber(int typeNumber) {
		this.typeNumber = typeNumber;
	}

	@Override
	public String toString() {
		return "LikesVO [likesNumber=" + likesNumber + ", nickname=" + nickname + ", likesType=" + likesType
				+ ", typeNumber=" + typeNumber + "]";
	}

	
	
	
	
}
