package com.pcwk.ehr.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.VO.CommentVO;
import com.pcwk.ehr.VO.MemberVO;
import com.pcwk.ehr.VO.PaymentInfoVO;
import com.pcwk.ehr.VO.PostVO;
import com.pcwk.ehr.cmn.MyPage;

public interface MyPageService {
	public List<PaymentInfoVO> paylist(String buyerEmail) throws SQLException;
	public List<PostVO> postlist(String nickname) throws SQLException;
	public List<CommentVO> commentlist(String nickname) throws SQLException;
	public List<PostVO> qnalist(String nickname) throws SQLException;
	

	MyPage getMyPageByMemberId(String memberId);	
	



}
