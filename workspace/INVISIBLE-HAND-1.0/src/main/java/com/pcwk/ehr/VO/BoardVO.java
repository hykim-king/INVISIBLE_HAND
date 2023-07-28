package com.pcwk.ehr.VO;

import java.util.Date;

import com.pcwk.ehr.cmn.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data // @Getter + @Setter + @ToString + @EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
public class BoardVO extends DTO {
	private int postnumber;
	private String author;
	private String title;
	private String content;
	private Date writtendate;
	private int likes;
	private int views;
	private String categorynumber;
}