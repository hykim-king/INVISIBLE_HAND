package com.pcwk.ehr.daoImpl;

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

	// 결제 정보 조회
	@Override
	public List<PaymentInfoVO> selectPaymentListByEmail(String buyerEmail) {
		return sqlSessionTemplate.selectList(NAMESPACE + DOT + "selectPaymentListByEmail", buyerEmail);
	}

	// 결제 정보 입력
	@Override
	public int InsertInfo(PaymentInfoVO inVO) {
		return sqlSessionTemplate.insert(NAMESPACE + DOT + "InsertInfo", inVO);
	}

	// 결제 정보 업데이트
	@Override
	public int updatePaymentInfo(PaymentInfoVO inVO) {
		return sqlSessionTemplate.update(this.NAMESPACE + DOT + "updatePaymentInfo", inVO);
	}

	// 결제 정보 유무 체크
	@Override
	public int checkPaymentInfo(String buyerEmail) {
		return sqlSessionTemplate.selectOne(NAMESPACE + DOT + "checkPaymentInfo", buyerEmail);
	}

}
