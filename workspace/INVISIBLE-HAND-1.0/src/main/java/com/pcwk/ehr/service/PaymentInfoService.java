package com.pcwk.ehr.service;

import java.sql.SQLException;

import com.pcwk.ehr.VO.PaymentInfoVO;

public interface PaymentInfoService {
	// 결제 정보 입력
	int addInfo(PaymentInfoVO inVO) throws SQLException;
	
	// 주문 번호 조회(결제 번호 조회)
	PaymentInfoVO getPaymentInfoByEmail(PaymentInfoVO inVO);
	
	// 구독 여부 확인
	public int checkPayment(PaymentInfoVO inVO);
	
}
