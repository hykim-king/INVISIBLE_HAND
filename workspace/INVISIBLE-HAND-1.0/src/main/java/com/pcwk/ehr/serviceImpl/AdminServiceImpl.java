package com.pcwk.ehr.serviceImpl;

import com.pcwk.ehr.VO.MemberVO;
import com.pcwk.ehr.dao.AdminDao;
import com.pcwk.ehr.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {

    private final AdminDao adminDao;

    @Autowired
    public AdminServiceImpl(AdminDao adminDao) {
        this.adminDao = adminDao;
    }

    @Override
    public MemberVO getAdminById(String adminId) {
        return adminDao.getAdminById(adminId);
    }

    @Override
    public void updateAdmin(MemberVO adminVO) {
        adminDao.updateAdmin(adminVO);
    }

}

