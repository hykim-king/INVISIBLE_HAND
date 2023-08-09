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
	final String NAMESPACE = "com.pcwk.ehr.paymentInfo";
	final String DOT = ".";

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	// 결제 정보 조회
	@Override
	public PaymentInfoVO selectPaymentInfoByEmail(PaymentInfoVO inVO) {
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│ selectPaymentInfoByEmail     │");
		LOG.debug("│ inVO                         │" + inVO);
		LOG.debug("│ statement                    │" + NAMESPACE + DOT + "selectPaymentInfoByEmail");
		LOG.debug("└──────────────────────────────┘");
		return sqlSessionTemplate.selectOne(NAMESPACE + DOT + "selectPaymentInfoByEmail", inVO);
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
	
	// 구독했는지 여부 확인
	@Override
	public int checkPayment(PaymentInfoVO inVO) {
		String statement = NAMESPACE + DOT + "checkPayment";
		LOG.debug("┌──────────────────┐");
		LOG.debug("│ statement        │ " + statement);
		LOG.debug("│ param            │ " + inVO.toString());
		
		int result = sqlSessionTemplate.selectOne(statement, inVO);
		
		LOG.debug("result---------------" + result);
		
		LOG.debug("│ result           │ " + result);
		LOG.debug("└──────────────────┘");
		return result;
	}

}
