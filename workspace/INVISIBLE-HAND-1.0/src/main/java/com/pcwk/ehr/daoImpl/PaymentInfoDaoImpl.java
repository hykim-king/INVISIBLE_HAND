package com.pcwk.ehr.daoImpl;

import org.apache.ibatis.mapping.BoundSql;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.VO.PaymentInfoVO;
import com.pcwk.ehr.cmn.PcwkLoger;
import com.pcwk.ehr.dao.PaymentInfoDao;

@Repository
public class PaymentInfoDaoImpl implements PaymentInfoDao, PcwkLoger {
	final String NAMESPACE = "com.pcwk.ehr";
	final String DOT = ".";

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	// 결제 정보 조회
	@Override
	public PaymentInfoVO selectPaymentInfoBySEQ(PaymentInfoVO inVO) {
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│ selectPaymentInfoBySEQ       │");
		LOG.debug("│ inVO                         │" + inVO);
		LOG.debug("│ statement                    │" + NAMESPACE + DOT + "selectPaymentInfoBySEQ");
		LOG.debug("└──────────────────────────────┘");
		return sqlSessionTemplate.selectOne(NAMESPACE + DOT + "selectPaymentInfoBySEQ", inVO);
	}
	
	// 결제 정보 입력
	@Override
	public int InsertInfo(PaymentInfoVO inVO) {
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│ InsertInfo                   │");
		LOG.debug("│ inVO                         │" + inVO);
		LOG.debug("│ statement                    │" + NAMESPACE + DOT + "InsertInfo");
		LOG.debug("└──────────────────────────────┘");
		BoundSql boundSql = sqlSessionTemplate.getConfiguration().getMappedStatement(NAMESPACE + DOT + "InsertInfo")
				.getBoundSql(inVO);
		String query = boundSql.getSql();
		LOG.debug("│ query                        │" + query);
		return sqlSessionTemplate.insert(NAMESPACE + DOT + "InsertInfo", inVO);
	}

}
