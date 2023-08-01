package com.pcwk.ehr.service;

import com.pcwk.ehr.VO.MemberVO;

public interface AdminService {
    MemberVO getAdminById(String adminId); // 관리자 ID를 기반으로 관리자 정보를 취득하는 메서드

    void updateAdmin(MemberVO adminVO); // 관리자 정보를 갱진 하는 메소드

}

