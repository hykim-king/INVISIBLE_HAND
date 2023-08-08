package com.pcwk.ehr.VO;

import java.util.Date;

public class CommentVO {
	
	private int commentNumber	; 		//댓글번호
	private String nickname ; 		//닉네임
	private String content  ; 		//내용 
	private int likes       ; 		//추천수
	private Date writtenDate ; 	//작성일
	private int postNum     ; 		//글번호
	
	public CommentVO() {}

	public int getCommentNumber() {
		return commentNumber;
	}

	public void setCommentNumber(int commentNumber) {
		this.commentNumber = commentNumber;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getLikes() {
		return likes;
	}

	public void setLikes(int likes) {
		this.likes = likes;
	}

	public Date getWrittenDate() {
		return writtenDate;
	}

	public void setWrittenDate(Date writtenDate) {
		this.writtenDate = writtenDate;
	}

	public int getPostNum() {
		return postNum;
	}

	public void setPostNum(int postNum) {
		this.postNum = postNum;
	}

	
	
}
