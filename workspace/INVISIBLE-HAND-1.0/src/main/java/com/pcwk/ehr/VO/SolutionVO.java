package com.pcwk.ehr.VO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

//임시 chartVO이기 때문에 롬복을 활용 나중에 바꿈

@Getter @Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class SolutionVO {
	private int  solname;		
	private int  codename;
	private String  solcontents;
		
}                      
