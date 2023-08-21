package com.pcwk.ehr.serviceImpl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.VO.CommentVO;
import com.pcwk.ehr.VO.MemberVO;
import com.pcwk.ehr.VO.PaymentInfoVO;
import com.pcwk.ehr.VO.PostVO;
import com.pcwk.ehr.cmn.MyPage;
import com.pcwk.ehr.dao.MyPageDao;
import com.pcwk.ehr.service.MyPageService;


@Service
public class MyPageServiceImpl implements MyPageService {
	
	 @Autowired
	    private MyPageDao myPageDao;

	 @Override
		public List<PaymentInfoVO> paylist(String buyerEmail) throws SQLException {
			return myPageDao.paylist(buyerEmail);
		}
	 
	 @Override
		public List<PostVO> postlist(String nickname) throws SQLException {
			return myPageDao.postlist(nickname);
		}
	 
	 @Override
		public List<PostVO> qnalist(String nickname) throws SQLException {
			return myPageDao.qnalist(nickname);
		}

	 
	 @Override
		public List<CommentVO> commentlist(String nickname) throws SQLException {
			return myPageDao.commentlist(nickname);
		}
	 
	    @Override
	    public MyPage getMyPageByMemberId(String memberId) {
	        return myPageDao.getMyPageByMemberId(memberId);
	    }



	
} // class end
