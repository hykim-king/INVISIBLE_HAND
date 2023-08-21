package com.pcwk.ehr.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.VO.MemberVO;

public interface AdminService {
	
	
	List<MemberVO> getAllMemberService();

	public MemberVO get(MemberVO member) throws ClassNotFoundException, SQLException;
	
	/**
	 * 회원 정보 수정
	 * @param member
	 * @return
	 * @throws SQLException
	 */
	public int update(MemberVO member) throws SQLException;
	
	/**
	 * 회원 정보 삭제
	 * @param member
	 * @return
	 * @throws SQLException
	 */
	public int deleteOne(MemberVO member) throws SQLException;
	
	/**
	 * 신규 회원 등록
	 * @param inVO
	 * @throws SQLException 
	 * @throws ClassNotFoundException 
	 */
	public int add(MemberVO member) throws ClassNotFoundException, SQLException;
	
	


}
