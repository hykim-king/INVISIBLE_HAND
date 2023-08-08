package com.pcwk.ehr.dao;

import com.pcwk.ehr.VO.PaymentInfoVO;

public interface PaymentInfoDao {
	// 결제 정보 입력
	int InsertInfo(PaymentInfoVO inVO);
	
	// 결제 정보 조회
	PaymentInfoVO selectPaymentInfoBySEQ(PaymentInfoVO inVO);
}
