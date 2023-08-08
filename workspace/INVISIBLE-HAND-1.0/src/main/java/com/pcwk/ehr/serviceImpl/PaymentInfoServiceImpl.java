package com.pcwk.ehr.serviceImpl;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.VO.PaymentInfoVO;
import com.pcwk.ehr.dao.PaymentInfoDao;
import com.pcwk.ehr.service.PaymentInfoService;

@Service
public class PaymentInfoServiceImpl implements PaymentInfoService {
	
	@Autowired
	PaymentInfoDao dao;

	// 결제 정보 조회
	@Override
	public PaymentInfoVO getPaymentInfoBySEQ(PaymentInfoVO inVO) {
		PaymentInfoVO vo = dao.selectPaymentInfoBySEQ(inVO);
		
		return vo;
	}
	
	// 결제 정보 입력
	@Override
	public int addInfo(PaymentInfoVO inVO) throws SQLException {
		return dao.InsertInfo(inVO);
	}

}
