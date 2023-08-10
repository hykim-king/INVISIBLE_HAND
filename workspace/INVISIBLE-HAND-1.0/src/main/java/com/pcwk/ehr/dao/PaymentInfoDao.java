package com.pcwk.ehr.dao;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.VO.PaymentInfoVO;

public interface PaymentInfoDao {
	// 결제 정보 입력
	public int InsertInfo(PaymentInfoVO inVO);
	
	// 전체 결제 정보
	public List<PaymentInfoVO> selectAll(PaymentInfoVO info) throws SQLException;
	
	// 결제 정보 조회
	public PaymentInfoVO selectPaymentInfoByEmail(String buyerEmail);
	
	// 구독했는지 여부 확인
	public int checkPayment(PaymentInfoVO inVO);
}
