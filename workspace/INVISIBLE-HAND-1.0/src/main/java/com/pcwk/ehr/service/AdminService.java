package com.pcwk.ehr.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.VO.AdminVO;
import com.pcwk.ehr.VO.MemberVO;
import com.pcwk.ehr.VO.PostVO;

public interface AdminService {
	
	



	
	//회원 정보 업데이트
	public int adminUpdate(MemberVO member) throws SQLException;
	
	//회원 전체 조회(페이징 및 검색 구현)
	List<MemberVO> doRetrieve(MemberVO inVO)throws SQLException;
	
//	List<MemberVO> getAllMemberService();
	
	//회원정보 조회
	public MemberVO get(MemberVO member) throws ClassNotFoundException, SQLException;
	
	//회원정보 삭제
	public int deleteOne(MemberVO member) throws SQLException;
	
	//회원정보 추가?? 
	public int add(MemberVO member) throws ClassNotFoundException, SQLException;
	
	
	
	//구독 정보 조회
	List<AdminVO> getAllsubscription();
	


	//구독 가격 수정
	public int updateSubscription(AdminVO admin) throws SQLException;

	//구독자 확인
	public AdminVO getSubscription(AdminVO admin) throws ClassNotFoundException, SQLException;

}
