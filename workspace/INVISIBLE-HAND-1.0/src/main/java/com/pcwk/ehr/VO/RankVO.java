package com.pcwk.ehr.VO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter @Setter
@NoArgsConstructor
@AllArgsConstructor
public class RankVO {
	
	private int	   rankseq;
	private String name;
	private int    score;	
	private int current_rank;
	private int previous_rank;
	private String ranking_update;
}
