package com.pcwk.ehr.dao;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.VO.AdminVO;
import com.pcwk.ehr.VO.MemberVO;

public interface AdminDao {
	// 회원정보 조회
	List<MemberVO> getAllMemberDao();
	
	// 건수 조회
	int getCount(MemberVO member) throws SQLException;

	// 회원정보 조회
	MemberVO get(MemberVO member) throws ClassNotFoundException, SQLException;

	// 회원정보 수정
	int update(MemberVO member) throws SQLException;

	// 회원탈퇴
	int deleteOne(MemberVO member) throws SQLException;

	// 구독정보 조회
	List<AdminVO> getAllsubscriptionDao();

	//구독가격 수정
	int update(AdminVO admin) throws SQLException;
	
	//구독자 확인
	AdminVO get(AdminVO admin) throws ClassNotFoundException, SQLException;


}
