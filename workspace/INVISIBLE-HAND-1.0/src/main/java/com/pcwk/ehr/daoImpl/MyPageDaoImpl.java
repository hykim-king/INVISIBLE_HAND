package com.pcwk.ehr.daoImpl;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.VO.CommentVO;
import com.pcwk.ehr.VO.MemberVO;
import com.pcwk.ehr.VO.PaymentInfoVO;
import com.pcwk.ehr.VO.PostVO;
import com.pcwk.ehr.cmn.MyPage;
import com.pcwk.ehr.dao.MyPageDao;

@Repository
public class MyPageDaoImpl implements MyPageDao {
	@Inject
	private SqlSessionTemplate sqlSessionTemplate ;

    private final String NAMESPACE = "com.pcwk.ehr.hand.mapper.MyPageMapper";
    private final String NAMESPACEPAY = "com.pcwk.ehr.paymentInfo";
    private final String NAMESPACEPOST = "com.pcwk.ehr.post";
    private final String NAMESPACECOMMENT = "com.pcwk.ehr.comment";

    @Override
   	public List<PaymentInfoVO> paylist(String buyerEmail) throws SQLException {
    	System.out.println("┌───────────────────────┐");
		System.out.println("│ mypagePayment()	    │"+ buyerEmail);
		System.out.println("└───────────────────────┘");
		
   		HashMap<String , Object> data = new HashMap<String , Object>();
    	data.put("buyerEmail", buyerEmail);
   		
    	return sqlSessionTemplate.selectList(NAMESPACEPAY +".selectPaymentListByEmail",data);
   	}
    
    @Override
   	public List<PostVO> postlist(String nickname) throws SQLException {
    	System.out.println("┌───────────────────────┐");
		System.out.println("│ nickname()	    	│"+ nickname);
		System.out.println("└───────────────────────┘");
		
   		HashMap<String , Object> data = new HashMap<String , Object>();
    	data.put("nickname", nickname);
   		
    	return sqlSessionTemplate.selectList(NAMESPACEPOST +".mypagepost",data);
   	}
    
    @Override
   	public List<CommentVO> commentlist(String nickname) throws SQLException {
    	System.out.println("┌───────────────────────┐");
		System.out.println("│ nickname()	    	│"+ nickname);
		System.out.println("└───────────────────────┘");
		
   		HashMap<String , Object> data = new HashMap<String , Object>();
    	data.put("nickname", nickname);
   		
    	return sqlSessionTemplate.selectList(NAMESPACECOMMENT + ".mypagecomment",data);
   	}
    
    @Override
   	public List<PostVO> qnalist(String nickname) throws SQLException {
    	System.out.println("┌───────────────────────┐");
		System.out.println("│ nickname()	    	│"+ nickname);
		System.out.println("└───────────────────────┘");
		
   		HashMap<String , Object> data = new HashMap<String , Object>();
    	data.put("nickname", nickname);
   		
    	return sqlSessionTemplate.selectList(NAMESPACEPOST +".myQNA",data);
   	}
       
    @Autowired
    private SqlSession sqlSession;

    @Override
    public MyPage getMyPageByMemberId(String memberId) {
        return sqlSession.selectOne(NAMESPACE + ".getMyPageByMemberId", memberId);
    }
    
   
    
} // class end
