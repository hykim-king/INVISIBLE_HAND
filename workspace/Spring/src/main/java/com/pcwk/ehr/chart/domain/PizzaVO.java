package com.pcwk.ehr.chart.domain;

import com.pcwk.ehr.board.domain.BoardVO;
import com.pcwk.ehr.cmn.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data //@Getter + @Setter + @ToString  + @EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
public class PizzaVO extends DTO {

	private String topping;//토핑
	private int    slices;
	
	
}
