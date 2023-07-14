package com.pcwk.ehr.user.domain;

import com.pcwk.ehr.board.domain.BoardVO;
import com.pcwk.ehr.cmn.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data //@Getter + @Setter + @ToString  + @EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
public class LevelPerMemberVO extends DTO {
	private String lvl;//레벨명
	private int cnt;//레벨 인원수
}
