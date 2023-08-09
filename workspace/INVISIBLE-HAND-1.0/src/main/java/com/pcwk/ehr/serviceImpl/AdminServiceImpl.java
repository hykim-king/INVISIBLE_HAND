package com.pcwk.ehr.serviceImpl;

import com.pcwk.ehr.VO.MemberVO;
import com.pcwk.ehr.VO.PostVO;
import com.pcwk.ehr.dao.AdminDao;
import com.pcwk.ehr.service.AdminService;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	public AdminDao adminDao;

	@Override
	public List<MemberVO> getAllMemberService() {
		// 여기에 기능을 추가하세요.
		return adminDao.getAllMemberDao(); // Dao호출
	}

	public List<PostVO> doRetrieve(PostVO inVO) throws SQLException {
		
		return adminDao.doRetrieve(inVO);
	}


}
