package com.pcwk.ehr.security;

import java.util.Optional;

import com.pcwk.ehr.VO.MemberVO;

public interface Member {
	
	 Optional<MemberVO> findByMemberId(String memberId);

}
