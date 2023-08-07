package com.pcwk.ehr.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pcwk.ehr.VO.MemberVO;
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
	

	@RequestMapping(value = "/payment_view.do")
	public String payment(Model model, MemberVO inVO,
			HttpSession session) throws ClassNotFoundException, SQLException {
		lg.debug("┌───────────────────────┐");
		lg.debug("│   payment()           │");
		lg.debug("└───────────────────────┘");
		
		MemberVO users = memberService.get(inVO);
		
		model.addAttribute("users", users);
		
		return "payment/payment_view";
	}

}
