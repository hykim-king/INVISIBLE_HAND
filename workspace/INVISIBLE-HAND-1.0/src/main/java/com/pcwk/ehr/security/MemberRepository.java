package com.pcwk.ehr.security;

import java.util.Optional;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.VO.MemberVO;


//DB와 member 연결하기 위한 DaoImpl
@Repository
public class MemberRepository implements Member {
	final Logger LOG = LogManager.getLogger(getClass());
	
	final String NAMESPACE = "com.pcwk.ehr.security";
	final String DOT = ".";
	
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
			
    @Override
    public Optional<MemberVO> findByMemberId(String memberId) {
        MemberVO memberVO = sqlSessionTemplate.selectOne(NAMESPACE + DOT + "findByMemberId", memberId);
        return Optional.ofNullable(memberVO);
    }
		
	

}
