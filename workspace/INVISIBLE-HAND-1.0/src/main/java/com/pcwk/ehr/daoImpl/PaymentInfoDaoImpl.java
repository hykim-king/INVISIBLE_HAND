package com.pcwk.ehr.daoImpl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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

	// 정보 전체 조회
	public List<PaymentInfoVO> selectAll(PaymentInfoVO info) throws SQLException {
		List<PaymentInfoVO> list = new ArrayList<>();

		list = sqlSessionTemplate.selectList(this.NAMESPACE + DOT + "selectAll", info);

		return list;
	}

	// 결제 정보 조회
	@Override
	public PaymentInfoVO selectPaymentInfoByEmail(String buyerEmail) {
//		List<PaymentInfoVO> paymentInfoList = 
//				sqlSessionTemplate.selectList("selectPaymentInfoByEmail", buyerEmail);
		PaymentInfoVO info = this.sqlSessionTemplate.selectOne
				(this.NAMESPACE + DOT + "selectPaymentInfoByEmail", buyerEmail);
		LOG.debug("info-----------" + info); // null?
		
		return info;
	}

	// 결제 정보 입력
	@Override
	public int InsertInfo(PaymentInfoVO inVO) {
		return sqlSessionTemplate.insert(NAMESPACE + DOT + "InsertInfo", inVO);
	}

	// 구독했는지 여부 확인
	@Override
	public int checkPayment(PaymentInfoVO inVO) {
		return sqlSessionTemplate.selectOne(NAMESPACE + DOT + "selectPaymentInfoByEmail", inVO);
	}

}
