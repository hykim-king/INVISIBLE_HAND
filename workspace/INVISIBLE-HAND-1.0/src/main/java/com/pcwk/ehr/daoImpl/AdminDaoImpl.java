package com.pcwk.ehr.daoImpl;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.mapping.BoundSql;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.VO.MemberVO;
import com.pcwk.ehr.VO.PostVO;
import com.pcwk.ehr.dao.AdminDao;

@Repository
public class AdminDaoImpl implements AdminDao {
	final Logger log = LogManager.getLogger(getClass());

	final String NAMESPACEMEMBER = "mapper.member.memberMapper"; // src/main/resources/member 폴더 까지.
	final String NAMESPACEPOST = "com.pcwk.ehr.post"; // src/main/resources/post폴더 까지.
	final String DOT = ".";

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<MemberVO> getAllMemberDao() {
		String statement = NAMESPACEMEMBER + DOT + "findAll"; // mapper에 있는 id가 findall인 xml을 쓰고싶어요!
		log.debug("1. statement: " + statement);
		List<MemberVO> memberlist = sqlSessionTemplate.selectList(statement); // statement, param << 여기서는 param이 없어서 안줌.
		for (MemberVO memberone : memberlist) {
			log.debug("2. memberone: " + memberone);
		}

		return memberlist;
	}
	
    @Override
    public List<PostVO> doRetrieve(PostVO inVO) throws SQLException{
    	inVO.setNickname("MJ");
    	
		log.debug("┌──────────────────────────────┐");
		log.debug("│doRetrieve                    │");
		log.debug("│inVO                          │"+inVO);
		log.debug("│statement                     │"+NAMESPACEPOST+DOT+"doRetrieve");
		log.debug("└──────────asd─────────────────┘");
			
		return sqlSessionTemplate.selectList(NAMESPACEPOST+DOT+"doRetrieve", inVO);
    }
	

}
