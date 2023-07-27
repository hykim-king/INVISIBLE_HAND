package com.pcwk.ehr.dao;

import com.pcwk.ehr.VO.AdminVO;

public interface AdminDao {
    AdminVO getAdminById(String adminId); 

    void updateAdmin(AdminVO adminVO); 

}

