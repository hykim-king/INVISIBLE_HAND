package com.pcwk.ehr.serviceImpl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.VO.MemberVO;
import com.pcwk.ehr.VO.PaymentInfoVO;
import com.pcwk.ehr.dao.PaymentInfoDao;
import com.pcwk.ehr.service.MemberService;
import com.pcwk.ehr.service.PaymentInfoService;

@Service
public class PaymentInfoServiceImpl implements PaymentInfoService {

	@Autowired
	PaymentInfoDao dao;
	
	@Autowired
	MemberService memberService;

	// 결제 정보 조회
	@Override
	public List<PaymentInfoVO> getPaymentListByEmail(String buyerEmail) {
		return dao.selectPaymentListByEmail(buyerEmail);
	}

	// 결제 정보 입력
	@Override
	public int addInfo(PaymentInfoVO inVO) throws SQLException {
		return dao.InsertInfo(inVO);
	}

	// 결제 정보 업데이트
	public int updatePaymentInfo(PaymentInfoVO inVO) {
		return dao.updatePaymentInfo(inVO);
	}

	// 결제 여부 확인
	@Override
	public int checkPaymentInfo(String buyerEmail) {
		return dao.checkPaymentInfo(buyerEmail);
	}
	
	// 결제시 member의 memberGrade를 2로 업데이트
	public void paymentGrade(PaymentInfoVO paymentInfoVO) {
		// 회원 등급 업데이트
		MemberVO member = memberService.getbyEmail(paymentInfoVO.getBuyerEmail());
		if (member != null && member.getMemberGrade() < 2) {
			// 결제 금액이 100원이고 회원 등급이 2보다 낮은 경우에 업그레이드를 진행합니다.
		    member.setMemberGrade(2); // 예시로 회원 등급을 2로 업그레이드 함
		    memberService.updateByMemberGrade(member);
		}
		
	}

}