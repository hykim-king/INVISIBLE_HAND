package com.pcwk.ehr.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.pcwk.ehr.VO.PaymentInfoVO;
import com.pcwk.ehr.cmn.MessageVO;
import com.pcwk.ehr.service.PaymentInfoService;

@Controller
@RequestMapping(value = "payment") // WEB_INF아래 폴더이름을 적는곳.
public class PaymentController {

	final Logger lg = LogManager.getLogger(getClass());

	@Autowired
	PaymentInfoService payService;

//	@RequestMapping(value = "/kakaopay.do")
//	@ResponseBody
//	public String kakaoPay() {
//		lg.debug("┌───────────────────────┐");
//		lg.debug("│   kakaoPay()          │");
//		lg.debug("└───────────────────────┘");
//		
//		try {
//			URL address = new URL("https://kapi.kakao.com/v1/payment/ready"); // url주소
//			HttpURLConnection serverConn = (HttpURLConnection) address.openConnection(); // 서버연결
//			serverConn.setRequestMethod("POST");
//			serverConn.setRequestProperty("Authorization", "KakaoAK 640f39175487971fd52e63a197ce1cc8");
//			serverConn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
//			serverConn.setDoOutput(true);
//			
//			// 받아올 데이터
//			String parameter = "cid=TC0ONETIME&partner_order_id=partner_order_id&partner_user_id=partner_user_id&item_name=engitem&quantity=1&total_amount=100&vat_amount=200&tax_free_amount=0&approval_url=http://localhost:8080/ehr/resources/success.html&fail_url=http://localhost:8080/ehr/resources/fail.html";
//			OutputStream ops = serverConn.getOutputStream(); // 보낼 객체
//			DataOutputStream dops = new DataOutputStream(ops); // 데이터 보낼 객체
//			dops.writeBytes(parameter);
//			dops.close();
//			
//			int result = serverConn.getResponseCode();
//			
//			InputStream ips; // 데이터 받을 객체
//			if (result == 200) { // 성공
//				ips = serverConn.getInputStream();
//			} else {
//				ips = serverConn.getErrorStream();
//			}
//			InputStreamReader ipsr = new InputStreamReader(ips); // 받은 데이터 읽는 객체
//			BufferedReader bufferread = new BufferedReader(ipsr); // 형변환
//			return bufferread.readLine();
//		} catch (MalformedURLException e) {
//			e.printStackTrace();
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//		
//		return "kakaopay/kakaopay";
//	}

	// 구독
	@RequestMapping(value = "/payment_info.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody // 비동기 처리를 하는 경우, HTTP 요청 부분의 body부분이 그대로 브라우저에 전달된다.
	public String add(PaymentInfoVO inVO, HttpServletRequest req) throws SQLException, ClassNotFoundException {
		String id = req.getParameter("merchantUid");
		lg.debug("id-----------------" + id);
		
		String jsonString = "";
		lg.debug("┌──────────────────────────────┐");
		lg.debug("│ inVO : " + inVO);
		String memberId = req.getParameter("memberId");
		lg.debug("│ memberId : " + memberId);
		int flag = this.payService.addInfo(inVO);
		// jsonString에 담을 메시지
		String message = "";
		if (1 == flag) {
			message = inVO.getbuyerEmail() + "가 구독되었습니다.";
		} else {
			message = inVO.getbuyerEmail() + "가 구독 실패되었습니다.";
		}

		MessageVO messageVO = new MessageVO(String.valueOf(flag), message);

		jsonString = new Gson().toJson(messageVO);
		lg.debug("│ jsonString : " + jsonString);
		lg.debug("└──────────────────────────────┘");

		return jsonString;
	}

	@RequestMapping(value = "/payment_view.do")
	public String payment() {
		lg.debug("┌───────────────────────┐");
		lg.debug("│   payment()           │");
		lg.debug("└───────────────────────┘");

		return "payment/payment_view";
	}

}