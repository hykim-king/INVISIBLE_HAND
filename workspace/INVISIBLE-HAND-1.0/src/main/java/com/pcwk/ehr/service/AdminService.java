package com.pcwk.ehr.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.VO.MemberVO;
import com.pcwk.ehr.VO.PostVO;

public interface AdminService {
	List<MemberVO> getAllMemberService();
	
    List<PostVO> doRetrieve(PostVO inVO) throws SQLException;
}
