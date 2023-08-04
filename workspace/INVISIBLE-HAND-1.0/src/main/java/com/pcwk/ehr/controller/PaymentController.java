package com.pcwk.ehr.controller;

import java.sql.SQLException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pcwk.ehr.VO.PaymentInfoVO;
import com.pcwk.ehr.cmn.StringUtil;
import com.pcwk.ehr.service.MemberService;
import com.pcwk.ehr.service.PaymentInfoService;

@Controller
@RequestMapping(value = "payment") // WEB_INF아래 폴더이름을 적는곳.
public class PaymentController {

	final Logger lg = LogManager.getLogger(getClass());
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	PaymentInfoService paymentInfoService;

	@ResponseBody
	@RequestMapping(value = "/kakaopay.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public String getPaymentInfo(PaymentInfoVO inVO) throws SQLException {
	    String jsonString = "";

	    try {
	        // PaymentInfoService에서 새로운 결제정보 저장
	        int cnt = paymentInfoService.addInfo(inVO);

	        // 저장된 결제정보 조회
	        PaymentInfoVO savedVO = paymentInfoService.getPaymentInfoBySEQ(inVO);

	        if (cnt == 1 && savedVO != null) {
	            // 성공적으로 저장되었으면 JSON 포맷으로 응답값 반환
	            jsonString = StringUtil.validMessageToJson(savedVO, "success", jsonString);
	        } else {
	            // 저장 실패 시 에러 메시지 반환
	            jsonString = StringUtil.validMessageToJson(savedVO, "fail to save payment info", jsonString);
	        }
	    } catch (Exception e) {
	        // 예외 발생 시 에러 메시지 반환
	        jsonString = StringUtil.validMessageToJson(null, e.getMessage(), jsonString);
	    }

	    lg.debug("│ jsonString │" + jsonString);
	    return jsonString;
	}

	@RequestMapping(value = "/payment.do")
	public String payment() {
		lg.debug("┌───────────────────────┐");
		lg.debug("│   payment()           │");
		lg.debug("└───────────────────────┘");

		return "payment/payment";
	}

}
