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
import com.pcwk.ehr.VO.PostVO;
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

	

	// 회원 정보 수정
	@Override
	public int adminUpdate(MemberVO member) throws SQLException {
		return adminDao.adminUpdate(member);
	}
	
	
	//회원 전체 조회(페이징 및 검색 구현)
	@Override
	public List<MemberVO> doRetrieve(MemberVO inVO) throws SQLException {
		
		return adminDao.doRetrieve(inVO);
	}
	
//	@Override
//	public List<MemberVO> getAllMemberService() {
//		// 여기에 기능을 추가하세요.
//		return adminDao.getAllMemberDao(); // Dao호출
//	}

	// 조회
	@Override
	public MemberVO get(MemberVO member) throws ClassNotFoundException, SQLException {
		return adminDao.get(member);
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
	public List<AdminVO> getAllsubscription() {
		return adminDao.getAllsubscription();
	}

	@Override
	public int updateSubscription(AdminVO admin) throws SQLException {
		return adminDao.updateSubscription(admin);
	}

	@Override
	public AdminVO getSubscription(AdminVO admin) throws ClassNotFoundException, SQLException {
		return adminDao.getSubscription(admin);
	}



} // class end
