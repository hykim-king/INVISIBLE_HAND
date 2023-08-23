package com.pcwk.ehr.VO;

import com.pcwk.ehr.cmn.DTO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class CommentVO extends DTO {
	private int commentNumber;
	private String nickname;
	private String content;
	private int likes;
	private String writtenDate;
	private int postNumber;
	private String memberId;
	private int commentCnt;
	private String categoryNumber; 

}
