package com.pcwk.ehr.serviceImpl;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.VO.AdminVO;
import com.pcwk.ehr.VO.MemberVO;
import com.pcwk.ehr.dao.AdminDao;
import com.pcwk.ehr.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

	final Logger LOG = LogManager.getLogger(getClass());

	@Autowired
	public AdminDao adminDao;
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	public AdminServiceImpl() {
		
	}

	@Override
	public List<MemberVO> getAllMemberService() {
		// 여기에 기능을 추가하세요.
		return adminDao.getAllMemberDao(); // Dao호출
	}

	// 조회
	@Override
	public MemberVO get(MemberVO member) throws ClassNotFoundException, SQLException {
		return adminDao.get(member);
	}

	// 유저 정보 변경
	@Override
	public int adminUpdate(MemberVO member) throws SQLException {
		return adminDao.adminUpdate(member);
	}

	// 유저 탈퇴
	@Override
	public int deleteOne(MemberVO member) throws SQLException {
		return adminDao.deleteOne(member);
	}

	@Override
	public int add(MemberVO member) throws ClassNotFoundException, SQLException {
		
		return 0;
	}

	@Override
	public List<AdminVO> getAllsubscriptionService() {
		return adminDao.getAllsubscriptionDao();
	}

	@Override
	public int update(AdminVO admin) throws SQLException {
		return adminDao.update(admin);
	}

	@Override
	public AdminVO get(AdminVO admin) throws ClassNotFoundException, SQLException {
		return adminDao.get(admin);
	}

} // class end
