package com.pcwk.ehr.VO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class RankVO {
	
	private int	   rankseq;
	private String name;
	private int    score;	
	private int currentRank;
	private int previousRank;
	private String rankingUpdate;
	private int changeRank;
}
