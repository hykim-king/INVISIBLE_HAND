package com.pcwk.ehr.dao;

import com.pcwk.ehr.VO.MemberVO;

public interface AdminDao {
    MemberVO getAdminById(String adminId); 

    void updateAdmin(MemberVO adminVO); 

}

