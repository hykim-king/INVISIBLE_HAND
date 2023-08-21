package com.pcwk.ehr.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.VO.PaymentInfoVO;

public interface PaymentInfoService {
	
	// 결제 정보 입력
	int addInfo(PaymentInfoVO inVO) throws SQLException;
	
	// 결제 정보 조희
	public List<PaymentInfoVO> getPaymentListByEmail(String buyerEmail);
	
	// 결제 정보 업데이트
	public int updatePaymentInfo(PaymentInfoVO inVO);
	
	// 결제 여부 확인
	public int checkPaymentInfo(String buyerEmail);
	
	// 회원가입시 회원 등급 업데이트
	public void paymentGrade(PaymentInfoVO paymentInfoVO);
	
}
