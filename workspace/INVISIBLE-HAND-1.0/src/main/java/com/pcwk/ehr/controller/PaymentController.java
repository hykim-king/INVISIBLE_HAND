package com.pcwk.ehr.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.pcwk.ehr.VO.PaymentInfoVO;
import com.pcwk.ehr.cmn.MessageVO;
import com.pcwk.ehr.service.MemberService;
import com.pcwk.ehr.service.PaymentInfoService;

@Controller
@RequestMapping(value = "payment") // WEB_INF아래 폴더이름을 적는곳.
public class PaymentController {

	final Logger lg = LogManager.getLogger(getClass());

	@Autowired
	PaymentInfoService payService;

	@Autowired
	MemberService memberService;
	
	// 구독 여부 확인
	@ResponseBody
	@RequestMapping(value = "/payment_check.do")
	public String paymentCheck(PaymentInfoVO info, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		int result = payService.checkPaymentInfo(email);

		return Integer.toString(result);
	}
	
	// 구독 정보
	@GetMapping("/payment_detail.do")
	public String paymentDetail(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String buyerEmail = (String) session.getAttribute("email"); // session으로 email정보 넘기기
	
		List<PaymentInfoVO> paymentList = payService.getPaymentListByEmail(buyerEmail); // 객체에 정보 담기
		
		model.addAttribute("paymentList", paymentList);
	
		return "payment/payment_detail";
	}
	
	@PostMapping("/payment_info.do")
	@ResponseBody
	public String paymentInfoAdd(PaymentInfoVO inVO) throws SQLException {
		String jsonString = "";
		
		int flag = this.payService.addInfo(inVO);
		// jsonString에 담을 메시지
		String message = "";
		if (1 == flag) {
			payService.paymentGrade(inVO);
			message = inVO.getBuyerEmail() + "가 등록 되었습니다.";
		} else {
			message = inVO.getBuyerEmail() + "님 등록이 실패되었습니다.";
		}

		MessageVO messageVO = new MessageVO(String.valueOf(flag), message);

		jsonString = new Gson().toJson(messageVO);

		return jsonString;
	}

	@GetMapping("/payment_view.do")
	public String payment() {
		lg.debug("┌───────────────────────┐");
		lg.debug("│   payment()           │");
		lg.debug("└───────────────────────┘");

		return "payment/payment_view";
	}

}